import os
#import datetime
from datetime import datetime
from datetime import date
from datetime import timedelta
from calendar import monthrange
import mysql.connector
import pandas as pd

from email_service import send_email_with_attachment
from xlsxwriter.utility import xl_rowcol_to_cell
#from openpyxl import Workbook

today = date(2022, 12, 1)
now = datetime.now()
DB_HOST = "localhost"
DB_USER = "root"
DB_PASSWORD = "fvLQRBSY8Sw824pp"
DB_NAME = "city_email"
DB_TABLE = "AvanantaDataFiltered"

#EMAIL_LIST = ["adhiraj@avananta.com"]
EMAIL_LIST = ''
AWS_ACCESS_KEY_ID = ''
AWS_SECRET_ACCESS_KEY = ''
filename = "MIS - {}.xlsx".format(today.strftime("%d-%m-%Y"))


def check_division(n, d):
    return n / d if d else 0

def split(list_a, chunk_size):
  for i in range(0, len(list_a), chunk_size):
    yield list_a[i:i + chunk_size]

class MySQLConnect:

    @staticmethod
    def mysql_connect():
        try:
            conn = mysql.connector.connect(host=DB_HOST, user=DB_USER, passwd=DB_PASSWORD, db=DB_NAME)
            return conn
        except Exception as error:
            print("unable to connect to MySQL", error)

    def execute(self, query):
        conn = self.mysql_connect()
        if conn:
            cursor = conn.cursor()
            cursor.execute(query)
            results = cursor.fetchall()
            cursor.close()
            conn.close()
            return results
        else:
            print("unable to connect to MySQL")


class ExcelUtils:
    def __init__(self, writer):
        self.writer = writer
        active_sheets = {"":[]}
        self.active_sheets = active_sheets
    
    def get_cities(self):
        my = MySQLConnect()
        cities = my.execute("select distinct(city_alloc) from {} where campaign not like '%agency%' order by city_alloc;".format(DB_TABLE))
        #print ("Cities are : " + str(cities))
        return cities

    def make_total_formula(self, start_index, row_index, current_index,sheet_name):
        writer = self.writer
        output = []
        rough_coloumns = self.active_sheets[sheet_name]
        chunk_size = 100
        i = start_index
        while i < current_index:
            cell = xl_rowcol_to_cell(row_index, i)
            output.append("'{}'!{}".format(sheet_name,cell))
            i += 3
        # we need to create sub sets =sum(se1)+sum(set2)+sum(set3)
        worksheet = writer.sheets["CalculationSheet"]
        #worksheet = writer.sheets[self.sheet_name]
        worksheet.set_column('A:A', 30)
        worksheet.set_column('B:ER', 15)
        workbook = writer.book
        worksheet.write(row_index, rough_coloumns[0] , sheet_name)
        light_orange_format = workbook.add_format({
            'fg_color': '#FDEADA',
            'border': 1,
            'font_size': 10,
        })
        percent_with_decimal_format = workbook.add_format({'num_format': '0.0', 'align': 'right'})
        #worksheet.write(2, 0, "Data Received", light_orange_format)
        #worksheet.write(3, 0, "Data Dialed", light_orange_format)
        #percent_with_decimal_format = workbook.add_format({'num_format': '0.0', 'align': 'right'})
        sets = list(split(output, chunk_size))
        index = 0
        formula_total = "=SUM({}{}:{}{})".format(rough_coloumns[4][0],row_index+1,rough_coloumns[4][4],row_index+1)
        total_cell = xl_rowcol_to_cell(row_index, rough_coloumns[3][0])
        worksheet.write_formula(total_cell, formula_total, percent_with_decimal_format)

        formula_attempt = "=SUM({}{}:{}{})".format(rough_coloumns[4][5],row_index+1,rough_coloumns[4][10],row_index+1)
        total_cell = xl_rowcol_to_cell(row_index, rough_coloumns[3][1])
        worksheet.write_formula(total_cell, formula_attempt, percent_with_decimal_format)

        #print(formula_total)
        #print(total_cell)
        #print(sets)
        for x in sets:
            output_str = ",".join(x)
            print(x)
            #print(start_index)    
            if start_index == 1:
                #print(output_str)
                #print(rough_coloumns[3][index])           
                formula = "=SUM({})".format(output_str)
                total_dialed_cell = xl_rowcol_to_cell(row_index, rough_coloumns[3][2]+index)
                print(total_dialed_cell)
                worksheet.write_formula(total_dialed_cell, formula, percent_with_decimal_format)
            else:
                formula = "=SUM({})".format(output_str)
                total_attempt_cell = xl_rowcol_to_cell(row_index, rough_coloumns[3][2]+index+5)
                print(total_attempt_cell)
                worksheet.write_formula(total_attempt_cell, formula, percent_with_decimal_format)
            index = index + 1
        
        
        
        #"Since_launch_Allcampaigns":['','',DB_TABLE,[1,'C','D',[3,4,5,6,7,8],['E','F','G','H','I','J']]]
        #formula is written to CalculationSheet sheet
        #
        if start_index == 1:
            formula = "=SUM(CalculationSheet!{}{})".format(rough_coloumns[1],row_index+1)
        else:
            formula = "=SUM(CalculationSheet!{}{})".format(rough_coloumns[2],row_index+1)   
        worksheet = writer.sheets[self.sheet_name]
        return formula

    def generate_excel_rough_work(self,sheet_name):
        writer = self.writer
        self.sheet_name = sheet_name
        df = pd.DataFrame({
            "": []
        })
        
        df.to_excel(writer, sheet_name=self.sheet_name, index=False, startrow=1)
        worksheet = writer.sheets[self.sheet_name]
        worksheet.set_column('A:A', 30)
        worksheet.set_column('B:ER', 15)
        workbook = writer.book
        light_orange_format = workbook.add_format({
            'fg_color': '#FDEADA',
            'border': 1,
            'font_size': 10,
        })
        percent_with_decimal_format = workbook.add_format({'num_format': '0.0', 'align': 'right'})
        # adding items
        worksheet.write(2, 0, "Data Received", light_orange_format)
        worksheet.write(3, 0, "Data Dialed", light_orange_format)
        #cell_list = ["'MTD (City Wise)_WB'!B4","'MTD (City Wise)_WB'!E4"]
        #output_str = ",".join(cell_list)
        #data_received_formula = "=SUM({})".format(output_str)
        #total_dialed_cell = xl_rowcol_to_cell(2, 2)
        #worksheet.write_formula(total_dialed_cell, data_received_formula, percent_with_decimal_format)
        #worksheet.write(2, 1, "Formula here", percent_with_decimal_format)

    def generate_excel(self,sheet_name,p1,p2,read_table):
        self.sheet_name = sheet_name
        self.p1 = p1
        self.p2 = p2
        self.read_table = read_table
        cities = self.get_cities()
        writer = self.writer
        df = pd.DataFrame({
            "": ["Data Received",
                 "Data Dialed",
                 "Data YTC",
                 "% Data Dialed",
                 "Connect",
                 "% Connect",
                 "RPC",
                 "RPC %",
                 "Appointment",
                 "% Appointment/RPC",
                 "% Appointment/Connect",
                 "% Appointment/Dialed",
                 "%Appointment/Received",
                 "",
                 "RPC",
                 "Appointment",
                 "PFA",
                 "SEMI-PFA",
                 "PROSPECT CONTACTED - CALLBACK",
                 "Connected_ Follow up",
                 "PROSPECT CONTACTED - DROPPED",
                 "Connected_ Drop/ Not Interested",
                 "Connected _ DNC",
                 "",
                 "TPC",
                 "PROSPECT NOT CONTACTABLE",
                 "Wrong Number",
                 "Connected_ No Right Party",
                 "",
                 "Not Connect",
                 "PRE Dial Reject",
                 "Dialled_ Not Connected",

                 ]
        })
        
        df.to_excel(writer, sheet_name=self.sheet_name, index=False, startrow=1)
        worksheet = writer.sheets[self.sheet_name]
        worksheet.set_column('A:A', 30)
        worksheet.set_column('B:ER', 15)
        workbook = writer.book
        merge_format = workbook.add_format({
            'border': 1,
            'align': 'center',
            'valign': 'vcenter',
            'font_size': 9,
            'fg_color': '#FAC090'})
        worksheet.merge_range('A1:A2', "Intensity City Wise", merge_format)
        center_format = workbook.add_format({
            'align': 'center',
            'fg_color': '#FAC090',
            'border': 1,
            'font_size': 9,
        })
        light_orange_format = workbook.add_format({
            'fg_color': '#FDEADA',
            'border': 1,
            'font_size': 10,
        })
        dark_orange_bold_format = workbook.add_format({
            'fg_color': '#FAC090',
            'border': 1,
            'font_size': 9
        })
        v_dark_orange_bold_format = workbook.add_format({
            'fg_color': '#FF7F00',
            'border': 1,
            'font_size': 10
        })
        blue_format = workbook.add_format({
            'fg_color': '#0070C0',
            'border': 1,
            'font_size': 10
        })
        percent_with_decimal_format = workbook.add_format({'num_format': '0.0%', 'align': 'right'})
        decimal_format = workbook.add_format({'num_format': '0.0', 'align': 'right'})
        dark_orange_bold_format.set_bold()
        blue_format.set_bold()
        worksheet.write(2, 0, "Data Received", light_orange_format)
        worksheet.write(3, 0, "Data Dialed", light_orange_format)
        worksheet.write(4, 0, "Data YTC", light_orange_format)
        worksheet.write(5, 0, "% Data Dialed", dark_orange_bold_format)
        worksheet.write(6, 0, "Connect", light_orange_format)
        worksheet.write(7, 0, "% Connect", dark_orange_bold_format)
        worksheet.write(8, 0, "RPC", light_orange_format)
        worksheet.write(9, 0, "RPC %", dark_orange_bold_format)
        worksheet.write(10, 0, "Appointment", light_orange_format)
        worksheet.write(11, 0, "% Appointment/RPC", dark_orange_bold_format)
        worksheet.write(12, 0, "% Appointment/Connect", dark_orange_bold_format)
        worksheet.write(13, 0, "% Appointment/Dialed", dark_orange_bold_format)
        worksheet.write(14, 0, "%Appointment/Received", dark_orange_bold_format)
        worksheet.write(16, 0, "RPC", blue_format)
        worksheet.write(17, 0, "Appointment", dark_orange_bold_format)
        worksheet.write(18, 0, "PFA", light_orange_format)
        worksheet.write(19, 0, "SEMI-PFA", light_orange_format)
        worksheet.write(20, 0, "PROSPECT CONTACTED - CALLBACK", dark_orange_bold_format)
        worksheet.write(21, 0, "Connected_ Follow up", light_orange_format)
        worksheet.write(22, 0, "PROSPECT CONTACTED - DROPPED", dark_orange_bold_format)
        worksheet.write(23, 0, "Connected_ Drop/ Not Interested", light_orange_format)
        worksheet.write(24, 0, "Connected _ DNC", light_orange_format)
        worksheet.write(26, 0, "TPC", blue_format)
        worksheet.write(27, 0, "PROSPECT NOT CONTACTABLE", dark_orange_bold_format)
        worksheet.write(28, 0, "Wrong Number", light_orange_format)
        worksheet.write(29, 0, "Connected_ No Right Party", light_orange_format)
        worksheet.write(31, 0, "Not Connect", blue_format)
        worksheet.write(32, 0, "PRE Dial Reject", dark_orange_bold_format)
        worksheet.write(33, 0, "Dialled_ Not Connected", light_orange_format)
        start = -2
        end = 0
        cities.append(("Total",))
        for i, city in enumerate(cities):
            start += 3
            end += 3
            if city:
                city = city[0]
            else:
                city = "NULL"
            city_name_temp = city if city else "NULL"
            worksheet.merge_range(0, start, 0, end, city_name_temp, merge_format)
            worksheet.write(1, start, "Total Data Dialled", center_format)
            worksheet.write(1, start + 1, "No. of Attempt", center_format)
            worksheet.write(1, start + 2, "Intensity", center_format)
            param1_condition=""
            param2_condition=""
            
            #today = date.today()
            c_day = today.day
            c_month = today.month
            c_year = today.year
            # inspecting time it takes to run
            #now = datetime.now()
            current_time = now.strftime("%d/%m/%Y %H:%M:%S")    
            print(self.sheet_name,current_time)
            #print(days_required)
            print(c_year)
            print(c_month)
            if self.p1 == 'YTD' :
                #currentYear = datetime.now().year
                currentYear = c_year
                param1_condition = " and YEAR(allocation_date) = '{}' ".format(currentYear)
            if self.p1 == 'MTD' :
                #currentYear = datetime.now().year
                currentYear = c_year
                #currentMonth = datetime.now().month
                currentMonth = c_month
                param1_condition = " and Month(allocation_date) = '{}' and YEAR(allocation_date) = '{}' ".format(currentMonth, currentYear)
            if not self.p2 == '':
                q = self.p2 
                param2_condition = " and campaign like '%{}%' ".format(q)
            if not city == 'Total':
                ### Column B ###
                if city:
                    data_received = "SELECT count(*) from {} where campaign not like '%agency%' and city_alloc =  '{}' {} {} ".format(self.read_table, city, param1_condition, param2_condition)  # B3
                    data_dialed = "SELECT count(*) from {} where campaign not like '%agency%' and city_alloc =  '{}' AND num_calls_triggered > 0 {} {} ".format(self.read_table, city, param1_condition, param2_condition)
                    connect = "SELECT count(*) from {} where campaign not like '%agency%' and city_alloc =  '{}' AND num_calls_answered > 0 {} {} ".format(self.read_table, city, param1_condition, param2_condition)
                    rpc = "select count(*) from {} where campaign not like '%agency%' and city_alloc = '{}' and num_calls_answered > 0 {} {} and (sub_status is null or (sub_status not like '%Wrong%' and sub_status not like '%WRONG%')) ".format(
                        self.read_table, city, param1_condition, param2_condition)  # B9
                    """
                    #Commented out on 5 July 2022 - don't want to put calling_status is not null and confuse
                    rpc = "select count(*) from {} where campaign not like '%agency%' and city_alloc = '{}' and calling_status is not null and num_calls_answered > 0 and sub_status not like '%Wrong%' and sub_status not like '%WRONG%' ".format(
                        DB_TABLE, city)  # B9
                    """
                    appointment = "select count(*) from {} where campaign not like '%agency%' and city_alloc = '{}' and sub_status = 'Interested' {} {} ".format(self.read_table,
                                                                                                            city, param1_condition, param2_condition)
                    pfa = "select count(*) from {} where campaign not like '%agency%' and city_alloc = '{}' and lead_type = 'PFA' {} {} ".format(self.read_table, city, param1_condition, param2_condition)
                    connected_drop = "select count(*) from {} where campaign not like '%agency%' and city_alloc = '{}' and sub_status = 'Not Interested' {} {} ".format(
                        self.read_table,
                        city, param1_condition, param2_condition)
                    connected_dnc = "select count(*) from {} where campaign not like '%agency%' and city_alloc = '{}' and sub_status = 'DNC' {} {} ".format(self.read_table,
                                                                                                           city, param1_condition, param2_condition)
                    wrong_number = "select count(*) from {} where campaign not like '%agency%' and city_alloc = '{}' and sub_status = 'Wrong Number' {} {} ".format(self.read_table,
                                                                                                               city, param1_condition, param2_condition)
                    connected_no_right_party = "select count(*) from {} where campaign not like '%agency%' and city_alloc = '{}' and sub_status = 'WRONG PERSON' {} {} ".format(
                        self.read_table, city, param1_condition, param2_condition)
                    C4 = "select sum(num_calls_triggered) from {} where campaign not like '%agency%' and city_alloc = '{}' and num_calls_triggered > 0 {} {} ;".format(self.read_table, city, param1_condition, param2_condition)
                    C7 = "select sum(num_calls_triggered) from {} where campaign not like '%agency%' and city_alloc = '{}' and num_calls_answered > 0 {} {} ;".format(self.read_table, city, param1_condition, param2_condition)
                    """
                    C9 = "select sum(num_calls_triggered) from {} where campaign not like '%agency%' and city_alloc = '{}' and calling_status is not null and num_calls_answered > 0 and sub_status not like '%Wrong%' and sub_status not like '%WRONG%' ".format(
                        DB_TABLE, city)
                    """    
                    C9 = "select sum(num_calls_triggered) from {} where campaign not like '%agency%' and city_alloc = '{}' and num_calls_answered > 0 {} {} and (sub_status is null or (sub_status not like '%Wrong%' and sub_status not like '%WRONG%')) ".format(
                        self.read_table, city, param1_condition, param2_condition)
                    C11 = "select sum(num_calls_triggered) from {} where campaign not like '%agency%' and city_alloc = '{}' and sub_status = 'Interested' {} {} ".format(self.read_table,
                                                                                                          city, param1_condition, param2_condition)
                else:
                    data_received = "SELECT count(*) from {} where campaign not like '%agency%' and city_alloc IS NULL {} {} ".format(self.read_table, param1_condition, param2_condition)  # B3
                    data_dialed = "SELECT count(*) from {} where campaign not like '%agency%' and city_alloc IS NULL AND num_calls_triggered > 0 {} {} ".format(self.read_table, param1_condition, param2_condition)
                    connect = "SELECT count(*) from {} where campaign not like '%agency%' and city_alloc IS NULL AND num_calls_answered > 0 {} {} ".format(self.read_table, param1_condition, param2_condition)
    
                    rpc = "select count(*) from {} where campaign not like '%agency%' {} {} and city_alloc IS NULL and num_calls_answered > 0 and (sub_status is null or (sub_status not like '%Wrong%' and sub_status not like '%WRONG%')) ".format(
                        self.read_table, param1_condition, param2_condition)  # B9                    
                    """     
                    #Commented out on 5 July 2022 - don't want to put calling_status is not null and confuse               
                    rpc = "select count(*) from {} where campaign not like '%agency%' and city_alloc IS NULL and calling_status is not null and num_calls_answered > 0 and sub_status not like '%Wrong%' and sub_status not like '%WRONG%' ".format(
                        DB_TABLE)  # B9
                    """
                    appointment = "select count(*) from {} where campaign not like '%agency%' and city_alloc IS NULL and sub_status = 'Interested' {} {} ".format(self.read_table, param1_condition, param2_condition
                                                                                                             )
                    pfa = "select count(*) from {} where campaign not like '%agency%' and city_alloc IS NULL and lead_type = 'PFA' {} {} ".format(self.read_table, param1_condition, param2_condition)
                    connected_drop = "select count(*) from {} where campaign not like '%agency%' and city_alloc IS NULL and sub_status = 'Not Interested' {} {} ".format(
                        self.read_table, param1_condition, param2_condition
                    )
                    connected_dnc = "select count(*) from {} where campaign not like '%agency%' and city_alloc IS NULL and sub_status = 'DNC' {} {} ".format(self.read_table, param1_condition, param2_condition
                                                                                                            )
                    wrong_number = "select count(*) from {} where campaign not like '%agency%' and city_alloc IS NULL and sub_status = 'Wrong Number' {} {} ".format(
                        self.read_table, param1_condition, param2_condition
                    )
                    connected_no_right_party = "select count(*) from {} where campaign not like '%agency%' and city_alloc IS NULL and sub_status = 'WRONG PERSON' {} {} ".format(
                        self.read_table, param1_condition, param2_condition)
                    C4 = "select sum(num_calls_triggered) from {} where campaign not like '%agency%' and city_alloc IS NULL and num_calls_triggered > 0 {} {} ;".format(self.read_table, param1_condition, param2_condition)
                    C7 = "select sum(num_calls_triggered) from {} where campaign not like '%agency%' and city_alloc IS NULL and num_calls_answered > 0 {} {} ;".format(self.read_table, param1_condition, param2_condition)
                    """
                    C9 = "select sum(num_calls_triggered) from {} where campaign not like '%agency%' and city_alloc IS NULL and calling_status is not null and num_calls_answered > 0 and sub_status not like '%Wrong%' and sub_status not like '%WRONG%' ".format(
                        DB_TABLE)
                    """
                    C9 = "select sum(num_calls_triggered) from {} where campaign not like '%agency%' {} {} and city_alloc IS NULL and num_calls_answered > 0 and (sub_status is null or (sub_status not like '%Wrong%' and sub_status not like '%WRONG%')) ".format(
                        self.read_table, param1_condition, param2_condition)
                    C11 = "select sum(num_calls_triggered) from {} where campaign not like '%agency%' and city_alloc IS NULL and sub_status = 'Interested' {} {} ".format(self.read_table, param1_condition, param2_condition
                                                                                                           )

                my = MySQLConnect()
                city_count = my.execute(data_received)
                #print(city_count)
                city_count = city_count[0][0] if city_count else city_count  # B3
                worksheet.write(2, start, city_count)
                data_dialed = my.execute(data_dialed)
                data_dialed = data_dialed[0][0] if data_dialed else data_dialed  # B4
                worksheet.write(3, start, data_dialed)
                data_ytc = city_count - data_dialed  # B5
                worksheet.write(4, start, data_ytc)
                data_dialed_percentage=""
                if city_count:
                    data_dialed_percentage = "{}%".format(round((float(data_dialed) * 100) / city_count, 1))  # B6
                worksheet.write(5, start, data_dialed_percentage, percent_with_decimal_format)
                connect = my.execute(connect)
                connect = connect[0][0] if connect else connect  # B7
                worksheet.write(6, start, connect)
                connect_percentage=""
                if city_count:
                    connect_percentage = "{}%".format(round((float(connect) * 100) / city_count, 1))  # B8
                worksheet.write(7, start, connect_percentage, percent_with_decimal_format)

                rpc = my.execute(rpc)
                rpc = rpc[0][0] if rpc else rpc  # B9
                worksheet.write(8, start, rpc)
                rpc_percentage=""
                if city_count:
                    rpc_percentage = "{}%".format(round((float(rpc) * 100) / city_count, 1))  # B10
                worksheet.write(9, start, rpc_percentage, percent_with_decimal_format)

                appointment = my.execute(appointment)
                appointment = appointment[0][0] if appointment else appointment  # B11
                worksheet.write(10, start, appointment)
                #appointment_percentage_RPC = "{}%".format(round(float(appointment) / rpc * 100, 1))  # B12
                appointment_percentage_RPC = "{}%".format(round(check_division(float(appointment),rpc) * 100, 1))  # B12
                worksheet.write_string(11, start, appointment_percentage_RPC, percent_with_decimal_format)
                appointment_percentage_Connect = "{}%".format(round(check_division(float(appointment),connect) * 100, 1))  # B13
                worksheet.write(12, start, appointment_percentage_Connect, percent_with_decimal_format)
                appointment_percentage_Dialed = "{}%".format(round(check_division(float(appointment) ,data_dialed) * 100, 1))  # B14
                worksheet.write(13, start, appointment_percentage_Dialed, percent_with_decimal_format)
                appointment_percentage_Received=""
                if city_count:
                    appointment_percentage_Received = "{}%".format(round(check_division(float(appointment),city_count) * 100, 1))  # B15
                worksheet.write(14, start, appointment_percentage_Received, percent_with_decimal_format)
                pfa = my.execute(pfa)
                pfa = pfa[0][0] if pfa else pfa  # B19
                worksheet.write(18, start, pfa)
                semi_pfa = appointment - pfa  # B20 : B11 - B19
                worksheet.write(19, start, semi_pfa)

                connected_drop = my.execute(connected_drop)
                connected_drop = connected_drop[0][0] if connected_drop else connected_drop  # B24
                worksheet.write(23, start, connected_drop)
                connected_dnc = my.execute(connected_dnc)
                connected_dnc = connected_dnc[0][0] if connected_dnc else connected_dnc  # B25
                worksheet.write(24, start, connected_dnc)
                connected_followup = rpc - appointment - connected_drop - connected_dnc  # B22 : B9 - B11 - B24 - B25
                worksheet.write(21, start, connected_followup)

                wrong_number = my.execute(wrong_number)
                wrong_number = wrong_number[0][0] if wrong_number else wrong_number  # B29
                worksheet.write(28, start, wrong_number)

                connected_no_right_party = my.execute(connected_no_right_party)
                connected_no_right_party = connected_no_right_party[0][
                    0] if connected_no_right_party else connected_no_right_party  # B30
                worksheet.write(29, start, connected_no_right_party)
                dialed_not_connected = data_dialed - connect  # B34 : B4 - B7
                worksheet.write(33, start, dialed_not_connected)

                # End of Column B #

                # Column C starts #

                C4 = my.execute(C4)
                C4 = C4[0][0] if C4 else C4
                worksheet.write(3, start + 1, C4)  # C4
                C7 = my.execute(C7)
                C7 = C7[0][0] if C7 else C7
                worksheet.write(6, start + 1, C7)  # C7

                C9 = my.execute(C9)
                C9 = C9[0][0] if C9 else C9
                worksheet.write(8, start + 1, C9)  # C9
                C11 = my.execute(C11)
                C11 = C11[0][0] if C11 else 0
                C11 = C11 if C11 else 0
                worksheet.write(10, start + 1, C11)
                ### End of Column C ###

                ### Column D starts ###

                D4 = round((C4 / data_dialed), 1) if data_dialed else 0  # D3
                worksheet.write(3, start + 2, D4)  # D4
                D7 = round((C7 / connect), 1) if connect else 0
                worksheet.write(6, start + 2, D7)  # D7
                D9 = round((C9 / rpc), 1) if rpc else 0
                worksheet.write(8, start + 2, D9)  # D8
                D11 = round((C11 / appointment), 1) if appointment else 0  # D11
                worksheet.write(10, start + 2, D11)

                ### End of Column D ###
        else:
            skip_rows = [2, 4, 5, 7, 9, 11, 12, 13, 14, 15, 16, 17, 20, 22, 25, 26, 27, 30, 31, 32]
            total_skip_rows = [15, 16, 17, 20, 22, 25, 26, 27, 30, 31, 32]
            for i in range(2, 34):
                total_dialed_cell = xl_rowcol_to_cell(i, start)
                total_attempt_cell = xl_rowcol_to_cell(i, start + 1)
                percentage_rows = [5, 7, 9, 11, 12, 13, 14]
                if i in percentage_rows:
                    if i == 5:
                        dialed_numerator = xl_rowcol_to_cell(i - 2, start)
                        dialed_denominator = xl_rowcol_to_cell(i - 3, start)
                        attempt_numerator = xl_rowcol_to_cell(i - 2, start+1)
                        attempt_denominator = xl_rowcol_to_cell(i - 3, start+1)
                    elif i == 7:
                        dialed_numerator = xl_rowcol_to_cell(i - 1, start)
                        dialed_denominator = xl_rowcol_to_cell(i - 5, start)
                        attempt_numerator = xl_rowcol_to_cell(i - 1, start+1)
                        attempt_denominator = xl_rowcol_to_cell(i - 5, start+1)
                    elif i == 9:
                        dialed_numerator = xl_rowcol_to_cell(i - 1, start)
                        dialed_denominator = xl_rowcol_to_cell(i - 7, start)
                        attempt_numerator = xl_rowcol_to_cell(i - 1, start+1)
                        attempt_denominator = xl_rowcol_to_cell(i - 7, start+1)
                    elif i == 11:
                        dialed_numerator = xl_rowcol_to_cell(i - 1, start)
                        dialed_denominator = xl_rowcol_to_cell(i - 3, start)
                        attempt_numerator = xl_rowcol_to_cell(i - 1, start+1)
                        attempt_denominator = xl_rowcol_to_cell(i - 3, start+1)
                    elif i == 12:
                        dialed_numerator = xl_rowcol_to_cell(i - 2, start)
                        dialed_denominator = xl_rowcol_to_cell(i - 6, start)
                        attempt_numerator = xl_rowcol_to_cell(i - 2, start+1)
                        attempt_denominator = xl_rowcol_to_cell(i - 6, start+1)
                    elif i == 13:
                        dialed_numerator = xl_rowcol_to_cell(i - 3, start)
                        dialed_denominator = xl_rowcol_to_cell(i - 10, start)
                        attempt_numerator = xl_rowcol_to_cell(i - 3, start+1)
                        attempt_denominator = xl_rowcol_to_cell(i - 10, start+1)
                    elif i == 14:
                        dialed_numerator = xl_rowcol_to_cell(i - 4, start)
                        dialed_denominator = xl_rowcol_to_cell(i - 12, start)
                        attempt_numerator = xl_rowcol_to_cell(i - 4, start+1)
                        attempt_denominator = xl_rowcol_to_cell(i - 12, start+1)
                    dialed_formula = "=IF({}".format(dialed_denominator)+">0,{}/{},0)".format(dialed_numerator, dialed_denominator) #=IF(E3>0,800/E3,0)
                    #"={}/{}".format(dialed_numerator, dialed_denominator)
                    attempt_formula = "={}/{}".format(attempt_numerator, attempt_denominator)
                    worksheet.write_formula(total_dialed_cell, dialed_formula, percent_with_decimal_format)
                    # worksheet.write_formula(total_attempt_cell, attempt_formula, percent_with_decimal_format)
                total_data_dialed_formula = self.make_total_formula(1, i, end - 3, self.sheet_name)
                if i not in skip_rows:
                    total_attempt_formula = self.make_total_formula(2, i, end - 3, self.sheet_name)
                    #total_intensity_formula = "=ROUND({}/{}, 1)".format(total_attempt_cell, total_dialed_cell)
                    total_intensity_formula = "=ROUND(IF({}".format(total_dialed_cell)+">0,{}/{},0), 1)".format(total_attempt_cell, total_dialed_cell)
                    if i < 16:
                        worksheet.write_formula(i, start + 1, total_attempt_formula)
                        worksheet.write_formula(i, start + 2, total_intensity_formula, decimal_format)
                total_skip_rows.extend(percentage_rows)
                if i not in total_skip_rows:
                    worksheet.write_formula(i, start, total_data_dialed_formula)
    def createDaysList(self,n):
        lst = []
        for i in range(n):
            lst.append(str(i+1))
        return(lst)
    def generate_excel_day_wise(self,sheet_name,p1,p2,read_table,day_number):
        self.sheet_name = sheet_name
        self.p1 = p1
        self.p2 = p2
        self.read_table = read_table
        self.day_number = day_number
        #cities = self.get_cities()
        writer = self.writer
        df = pd.DataFrame({
            "": ["Data Received",
                 "Data Dialed",
                 "Data YTC",
                 "% Data Dialed",
                 "Connect",
                 "% Connect",
                 "RPC",
                 "RPC %",
                 "Appointment",
                 "% Appointment/RPC",
                 "% Appointment/Connect",
                 "% Appointment/Dialed",
                 "%Appointment/Received",
                 "",
                 "RPC",
                 "Appointment",
                 "PFA",
                 "SEMI-PFA",
                 "PROSPECT CONTACTED - CALLBACK",
                 "Connected_ Follow up",
                 "PROSPECT CONTACTED - DROPPED",
                 "Connected_ Drop/ Not Interested",
                 "Connected _ DNC",
                 "",
                 "TPC",
                 "PROSPECT NOT CONTACTABLE",
                 "Wrong Number",
                 "Connected_ No Right Party",
                 "",
                 "Not Connect",
                 "PRE Dial Reject",
                 "Dialled_ Not Connected",

                 ]
        })
        
        df.to_excel(writer, sheet_name=self.sheet_name, index=False, startrow=1)
        worksheet = writer.sheets[self.sheet_name]
        worksheet.set_column('A:A', 30)
        worksheet.set_column('B:ER', 15)
        workbook = writer.book
        merge_format = workbook.add_format({
            'border': 1,
            'align': 'center',
            'valign': 'vcenter',
            'font_size': 9,
            'fg_color': '#FAC090'})
        worksheet.merge_range('A1:A2', "Intensity City Wise", merge_format)
        center_format = workbook.add_format({
            'align': 'center',
            'fg_color': '#FAC090',
            'border': 1,
            'font_size': 9,
        })
        light_orange_format = workbook.add_format({
            'fg_color': '#FDEADA',
            'border': 1,
            'font_size': 10,
        })
        dark_orange_bold_format = workbook.add_format({
            'fg_color': '#FAC090',
            'border': 1,
            'font_size': 9
        })
        v_dark_orange_bold_format = workbook.add_format({
            'fg_color': '#FF7F00',
            'border': 1,
            'font_size': 10
        })
        blue_format = workbook.add_format({
            'fg_color': '#0070C0',
            'border': 1,
            'font_size': 10
        })
        percent_with_decimal_format = workbook.add_format({'num_format': '0.0%', 'align': 'right'})
        decimal_format = workbook.add_format({'num_format': '0.0', 'align': 'right'})
        dark_orange_bold_format.set_bold()
        blue_format.set_bold()
        worksheet.write(2, 0, "Data Received", light_orange_format)
        worksheet.write(3, 0, "Data Dialed", light_orange_format)
        worksheet.write(4, 0, "Data YTC", light_orange_format)
        worksheet.write(5, 0, "% Data Dialed", dark_orange_bold_format)
        worksheet.write(6, 0, "Connect", light_orange_format)
        worksheet.write(7, 0, "% Connect", dark_orange_bold_format)
        worksheet.write(8, 0, "RPC", light_orange_format)
        worksheet.write(9, 0, "RPC %", dark_orange_bold_format)
        worksheet.write(10, 0, "Appointment", light_orange_format)
        worksheet.write(11, 0, "% Appointment/RPC", dark_orange_bold_format)
        worksheet.write(12, 0, "% Appointment/Connect", dark_orange_bold_format)
        worksheet.write(13, 0, "% Appointment/Dialed", dark_orange_bold_format)
        worksheet.write(14, 0, "%Appointment/Received", dark_orange_bold_format)
        worksheet.write(16, 0, "RPC", blue_format)
        worksheet.write(17, 0, "Appointment", dark_orange_bold_format)
        worksheet.write(18, 0, "PFA", light_orange_format)
        worksheet.write(19, 0, "SEMI-PFA", light_orange_format)
        worksheet.write(20, 0, "PROSPECT CONTACTED - CALLBACK", dark_orange_bold_format)
        worksheet.write(21, 0, "Connected_ Follow up", light_orange_format)
        worksheet.write(22, 0, "PROSPECT CONTACTED - DROPPED", dark_orange_bold_format)
        worksheet.write(23, 0, "Connected_ Drop/ Not Interested", light_orange_format)
        worksheet.write(24, 0, "Connected _ DNC", light_orange_format)
        worksheet.write(26, 0, "TPC", blue_format)
        worksheet.write(27, 0, "PROSPECT NOT CONTACTABLE", dark_orange_bold_format)
        worksheet.write(28, 0, "Wrong Number", light_orange_format)
        worksheet.write(29, 0, "Connected_ No Right Party", light_orange_format)
        worksheet.write(31, 0, "Not Connect", blue_format)
        worksheet.write(32, 0, "PRE Dial Reject", dark_orange_bold_format)
        worksheet.write(33, 0, "Dialled_ Not Connected", light_orange_format)
        start = -2
        end = 0
        
        days_required = []
        #c_day = datetime(2022, 11, 1).day
        #c_month = datetime(2022, 11, 1).month
        #c_year = datetime(2022, 11, 1).year
        #c_day = datetime.now().day
        #c_month = datetime.now().month
        #c_year = datetime.now().year
        #today = date(2022, 12, 1)
        #today = date.today()
        c_day = today.day
        c_month = today.month
        c_year = today.year
        if not day_number == 0:
            #MTD DAY WISE
            if c_day > 1:
                c_day = c_day - 1
            else:
                first = today.replace(day=1)
                prevoius_month = (first - timedelta(days=1)).month
                prevoius_year = (first - timedelta(days=1)).year
                c_month = prevoius_month
                c_year  = prevoius_year
                c_week_temp, c_day = monthrange(c_year, c_month)
            for day_i in range(c_day):
                days_required.append(str(day_i+1))
            days_required.append("Total")
        else:
            #Yesterday
            yesterday_day = (today - timedelta(days = 1)).day #c_day - 1
            days_required.append(str(yesterday_day))
            c_year = (today - timedelta(days = 1)).year
            c_month = (today - timedelta(days = 1)).month
            #total case not required for yesterday
            days_required.append("Total")

        current_time = now.strftime("%d/%m/%Y %H:%M:%S")    
        #print(self.sheet_name,current_time)
        #print(days_required)
        #print(c_year)
        #print(c_month)
        for day in days_required:
            start += 3
            end += 3
            day_name_temp = day if day else "NULL"
            worksheet.merge_range(0, start, 0, end, str(day_name_temp), merge_format)
            worksheet.write(1, start, "Total Data Dialled", center_format)
            worksheet.write(1, start + 1, "No. of Attempt", center_format)
            worksheet.write(1, start + 2, "Intensity", center_format)
            param1_condition=""
            param2_condition=""
            from datetime import datetime
            if self.p1 == 'YTD' :
                #currentYear = datetime.now().year
                currentYear = c_year
                param1_condition = " and YEAR(timestamp_created) = '{}' ".format(currentYear)
            if self.p1 == 'MTD' :
                #currentYear = datetime.now().year
                currentYear = c_year
                #currentMonth = datetime.now().month
                currentMonth = c_month
                param1_condition = " and Month(timestamp_created) = '{}' and YEAR(timestamp_created) = '{}' ".format(currentMonth, currentYear)
            if not self.p2 == '':
                q = self.p2 
                param2_condition = " and campaign like '%{}%' ".format(q)
            if not day == 'Total':
                ### Column B ###
                if day:
                    data_received = 0 #"SELECT count(*) from {} where campaign not like '%agency%' and DAY(timestamp_created) =  '{}' {} {} ".format(self.read_table, day, param1_condition, param2_condition)  # B3
                    
                    data_dialed = "SELECT count(distinct alloc_id) from {} where campaign not like '%agency%' and  DAY(timestamp_created) =  '{}' {} {} ".format(self.read_table, day, param1_condition, param2_condition)
                    #print(data_dialed)
                    connect = "SELECT count(distinct alloc_id) from {} where campaign not like '%agency%' and telco_code = 16 and DAY(timestamp_created) =  '{}' {} {} ".format(self.read_table, day, param1_condition, param2_condition)
                    rpc = "select count(distinct alloc_id) from {} where campaign not like '%agency%' and telco_code = 16 and DAY(timestamp_created) = '{}' {} {} and (sub_status is null or (sub_status not like '%Wrong%' and sub_status not like '%WRONG%')) ".format( self.read_table, day, param1_condition, param2_condition)  # B9
                    """
                    #Commented out on 5 July 2022 - don't want to put calling_status is not null and confuse
                    rpc = "select count(*) from {} where campaign not like '%agency%' and DAY(timestamp_created) = '{}' and calling_status is not null and num_calls_answered > 0 and sub_status not like '%Wrong%' and sub_status not like '%WRONG%' ".format(
                        DB_TABLE, city)  # B9
                    """
                    appointment = "select count(distinct alloc_id) from {} where campaign not like '%agency%' and DAY(timestamp_created) = '{}' and sub_status = 'Interested' {} {} ".format(self.read_table,
                                                                                                            day, param1_condition, param2_condition)
                    pfa = "select count(distinct alloc_id) from {} where campaign not like '%agency%' and DAY(timestamp_created) = '{}' and lead_type = 'PFA' {} {} ".format(self.read_table, day, param1_condition, param2_condition)
                    connected_drop = "select count(distinct alloc_id) from {} where campaign not like '%agency%' and DAY(timestamp_created) = '{}' and sub_status = 'Not Interested' {} {} ".format(
                        self.read_table,
                        day, param1_condition, param2_condition)
                    connected_dnc = "select count(distinct alloc_id) from {} where campaign not like '%agency%' and DAY(timestamp_created) = '{}' and sub_status = 'DNC' {} {} ".format(self.read_table,
                                                                                                           day, param1_condition, param2_condition)
                    wrong_number = "select count(distinct alloc_id) from {} where campaign not like '%agency%' and DAY(timestamp_created) = '{}' and sub_status = 'Wrong Number' {} {} ".format(self.read_table,
                                                                                                               day, param1_condition, param2_condition)
                    connected_no_right_party = "select count(distinct alloc_id) from {} where campaign not like '%agency%' and DAY(timestamp_created) = '{}' and sub_status = 'WRONG PERSON' {} {} ".format(
                        self.read_table, day, param1_condition, param2_condition)
                    C4 = "select COUNT(*) from {} where campaign not like '%agency%' and DAY(timestamp_created) = '{}'  {} {} ;".format(self.read_table, day, param1_condition, param2_condition)
                    C7 = "select COUNT(*) from {} where campaign not like '%agency%' and DAY(timestamp_created) = '{}' and telco_code = 16 {} {} ;".format(self.read_table, day, param1_condition, param2_condition)
                    """
                    C9 = "select sum(num_calls_triggered) from {} where campaign not like '%agency%' and DAY(timestamp_created) = '{}' and calling_status is not null and num_calls_answered > 0 and sub_status not like '%Wrong%' and sub_status not like '%WRONG%' ".format(
                        DB_TABLE, city)
                    """    
                    C9 = "select COUNT(*) from {} where campaign not like '%agency%' and DAY(timestamp_created) = '{}' and telco_code = 16 {} {} and (sub_status is null or (sub_status not like '%Wrong%' and sub_status not like '%WRONG%')) ".format(
                        self.read_table, day, param1_condition, param2_condition)
                    C11 = "select COUNT(*) from {} where campaign not like '%agency%' and DAY(timestamp_created) = '{}' and sub_status = 'Interested' {} {} ".format(self.read_table,
                                                                                                          day, param1_condition, param2_condition)
                else:
                    data_received = 0 #"SELECT count(*) from {} where campaign not like '%agency%' {} {} ".format(self.read_table, param1_condition, param2_condition)  # B3
                    data_dialed = "SELECT count(*) from {} where campaign not like '%agency%' {} {} ".format(self.read_table, param1_condition, param2_condition)
                    connect = "SELECT count(*) from {} where campaign not like '%agency%'  and telco_code = 16 {} {} ".format(self.read_table, param1_condition, param2_condition)
    
                    rpc = "select count(*) from {} where campaign not like '%agency%' {} {} and telco_code = 16 and num_calls_answered > 0 and (sub_status is null or (sub_status not like '%Wrong%' and sub_status not like '%WRONG%')) ".format(
                        self.read_table, param1_condition, param2_condition)  # B9                    
                    """     
                    #Commented out on 5 July 2022 - don't want to put calling_status is not null and confuse               
                    rpc = "select count(*) from {} where campaign not like '%agency%' and city_alloc IS NULL and calling_status is not null and num_calls_answered > 0 and sub_status not like '%Wrong%' and sub_status not like '%WRONG%' ".format(
                        DB_TABLE)  # B9
                    """
                    appointment = "select count(*) from {} where campaign not like '%agency%' and city_alloc IS NULL and sub_status = 'Interested' {} {} ".format(self.read_table, param1_condition, param2_condition
                                                                                                             )
                    pfa = "select count(*) from {} where campaign not like '%agency%' and city_alloc IS NULL and lead_type = 'PFA' {} {} ".format(self.read_table, param1_condition, param2_condition)
                    connected_drop = "select count(*) from {} where campaign not like '%agency%' and city_alloc IS NULL and sub_status = 'Not Interested' {} {} ".format(
                        self.read_table, param1_condition, param2_condition
                    )
                    connected_dnc = "select count(*) from {} where campaign not like '%agency%' and city_alloc IS NULL and sub_status = 'DNC' {} {} ".format(self.read_table, param1_condition, param2_condition
                                                                                                            )
                    wrong_number = "select count(*) from {} where campaign not like '%agency%' and city_alloc IS NULL and sub_status = 'Wrong Number' {} {} ".format(
                        self.read_table, param1_condition, param2_condition
                    )
                    connected_no_right_party = "select count(*) from {} where campaign not like '%agency%' and city_alloc IS NULL and sub_status = 'WRONG PERSON' {} {} ".format(
                        self.read_table, param1_condition, param2_condition)
                    C4 = "select COUNT(distinct alloc_id) from {} where campaign not like '%agency%'  {} {} ;".format(self.read_table, param1_condition, param2_condition)
                    C7 = "select COUNT(distinct alloc_id) from {} where campaign not like '%agency%' and telco_code = 16 {} {} ;".format(self.read_table, param1_condition, param2_condition)
                    """
                    C9 = "select sum(num_calls_triggered) from {} where campaign not like '%agency%' and city_alloc IS NULL and calling_status is not null and num_calls_answered > 0 and sub_status not like '%Wrong%' and sub_status not like '%WRONG%' ".format(
                        DB_TABLE)
                    """
                    C9 = "select COUNT(distinct alloc_id) from {} where campaign not like '%agency%' {} {}  and telco_code = 16 and (sub_status is null or (sub_status not like '%Wrong%' and sub_status not like '%WRONG%')) ".format(
                        self.read_table, param1_condition, param2_condition)
                    C11 = "select COUNT(distinct alloc_id) from {} where campaign not like '%agency%'  and sub_status = 'Interested' {} {} ".format(self.read_table, param1_condition, param2_condition
                                                                                                           )

                my = MySQLConnect()
                #day_count = my.execute(data_received)
                #print(city_count)
                day_count = 0 #day_count[0][0] if day_count else day_count  # B3
                worksheet.write(2, start, day_count)
                data_dialed = my.execute(data_dialed)
                data_dialed = data_dialed[0][0] if data_dialed else data_dialed  # B4
                worksheet.write(3, start, data_dialed)
                data_ytc = 0 #day_count - data_dialed  # B5
                worksheet.write(4, start, data_ytc)
                data_dialed_percentage=""
                if not day_count == 0:
                    data_dialed_percentage = "{}%".format(round((float(data_dialed) * 100) / day_count, 1))  # B6
                worksheet.write(5, start, data_dialed_percentage, percent_with_decimal_format)
                connect = my.execute(connect)
                connect = connect[0][0] if connect else connect  # B7
                worksheet.write(6, start, connect)
                connect_percentage=""
                if not day_count == 0:
                    connect_percentage = "{}%".format(round((float(connect) * 100) / day_count, 1))  # B8
                worksheet.write(7, start, connect_percentage, percent_with_decimal_format)

                rpc = my.execute(rpc)
                rpc = rpc[0][0] if rpc else rpc  # B9
                worksheet.write(8, start, rpc)
                rpc_percentage=""
                if not day_count == 0:
                    rpc_percentage = "{}%".format(round((float(rpc) * 100) / day_count, 1))  # B10
                worksheet.write(9, start, rpc_percentage, percent_with_decimal_format)

                appointment = my.execute(appointment)
                appointment = appointment[0][0] if appointment else appointment  # B11
                worksheet.write(10, start, appointment)
                #appointment_percentage_RPC = "{}%".format(round(float(appointment) / rpc * 100, 1))  # B12
                appointment_percentage_RPC = "{}%".format(round(check_division(float(appointment),rpc) * 100, 1))  # B12
                worksheet.write_string(11, start, appointment_percentage_RPC, percent_with_decimal_format)
                appointment_percentage_Connect = "{}%".format(round(check_division(float(appointment),connect) * 100, 1))  # B13
                worksheet.write(12, start, appointment_percentage_Connect, percent_with_decimal_format)
                appointment_percentage_Dialed = "{}%".format(round(check_division(float(appointment) ,data_dialed) * 100, 1))  # B14
                worksheet.write(13, start, appointment_percentage_Dialed, percent_with_decimal_format)
                appointment_percentage_Received=""
                if day_count:
                    appointment_percentage_Received = "{}%".format(round(check_division(float(appointment),day_count) * 100, 1))  # B15
                worksheet.write(14, start, appointment_percentage_Received, percent_with_decimal_format)
                pfa = my.execute(pfa)
                pfa = pfa[0][0] if pfa else pfa  # B19
                worksheet.write(18, start, pfa)
                semi_pfa = appointment - pfa  # B20 : B11 - B19
                worksheet.write(19, start, semi_pfa)

                connected_drop = my.execute(connected_drop)
                connected_drop = connected_drop[0][0] if connected_drop else connected_drop  # B24
                worksheet.write(23, start, connected_drop)
                connected_dnc = my.execute(connected_dnc)
                connected_dnc = connected_dnc[0][0] if connected_dnc else connected_dnc  # B25
                worksheet.write(24, start, connected_dnc)
                connected_followup = rpc - appointment - connected_drop - connected_dnc  # B22 : B9 - B11 - B24 - B25
                worksheet.write(21, start, connected_followup)

                wrong_number = my.execute(wrong_number)
                wrong_number = wrong_number[0][0] if wrong_number else wrong_number  # B29
                worksheet.write(28, start, wrong_number)

                connected_no_right_party = my.execute(connected_no_right_party)
                connected_no_right_party = connected_no_right_party[0][
                    0] if connected_no_right_party else connected_no_right_party  # B30
                worksheet.write(29, start, connected_no_right_party)
                dialed_not_connected = data_dialed - connect  # B34 : B4 - B7
                worksheet.write(33, start, dialed_not_connected)

                # End of Column B #

                # Column C starts #

                C4 = my.execute(C4)
                C4 = C4[0][0] if C4 else C4
                worksheet.write(3, start + 1, C4)  # C4
                C7 = my.execute(C7)
                C7 = C7[0][0] if C7 else C7
                worksheet.write(6, start + 1, C7)  # C7

                C9 = my.execute(C9)
                C9 = C9[0][0] if C9 else C9
                worksheet.write(8, start + 1, C9)  # C9
                C11 = my.execute(C11)
                C11 = C11[0][0] if C11 else 0
                C11 = C11 if C11 else 0
                worksheet.write(10, start + 1, C11)
                ### End of Column C ###

                ### Column D starts ###

                D4 = round((C4 / data_dialed), 1) if data_dialed else 0  # D3
                worksheet.write(3, start + 2, D4)  # D4
                D7 = round((C7 / connect), 1) if connect else 0
                worksheet.write(6, start + 2, D7)  # D7
                D9 = round((C9 / rpc), 1) if rpc else 0
                worksheet.write(8, start + 2, D9)  # D8
                D11 = round((C11 / appointment), 1) if appointment else 0  # D11
                worksheet.write(10, start + 2, D11)

                ### End of Column D ###
        else:
            skip_rows = [2, 4, 5, 7, 9, 11, 12, 13, 14, 15, 16, 17, 20, 22, 25, 26, 27, 30, 31, 32]
            total_skip_rows = [15, 16, 17, 20, 22, 25, 26, 27, 30, 31, 32]
            for i in range(2, 34):
                total_dialed_cell = xl_rowcol_to_cell(i, start)
                #print(total_dialed_cell)
                total_attempt_cell = xl_rowcol_to_cell(i, start + 1)
                percentage_rows = [5, 7, 9, 11, 12, 13, 14]
                if i in percentage_rows:
                    if i == 5:
                        dialed_numerator = xl_rowcol_to_cell(i - 2, start)
                        dialed_denominator = xl_rowcol_to_cell(i - 3, start)
                        #print(dialed_denominator)
                        attempt_numerator = xl_rowcol_to_cell(i - 2, start+1)
                        attempt_denominator = xl_rowcol_to_cell(i - 3, start+1)
                    elif i == 7:
                        dialed_numerator = xl_rowcol_to_cell(i - 1, start)
                        dialed_denominator = xl_rowcol_to_cell(i - 5, start)
                        attempt_numerator = xl_rowcol_to_cell(i - 1, start+1)
                        attempt_denominator = xl_rowcol_to_cell(i - 5, start+1)
                    elif i == 9:
                        dialed_numerator = xl_rowcol_to_cell(i - 1, start)
                        dialed_denominator = xl_rowcol_to_cell(i - 7, start)
                        attempt_numerator = xl_rowcol_to_cell(i - 1, start+1)
                        attempt_denominator = xl_rowcol_to_cell(i - 7, start+1)
                    elif i == 11:
                        dialed_numerator = xl_rowcol_to_cell(i - 1, start)
                        dialed_denominator = xl_rowcol_to_cell(i - 3, start)
                        attempt_numerator = xl_rowcol_to_cell(i - 1, start+1)
                        attempt_denominator = xl_rowcol_to_cell(i - 3, start+1)
                    elif i == 12:
                        dialed_numerator = xl_rowcol_to_cell(i - 2, start)
                        dialed_denominator = xl_rowcol_to_cell(i - 6, start)
                        attempt_numerator = xl_rowcol_to_cell(i - 2, start+1)
                        attempt_denominator = xl_rowcol_to_cell(i - 6, start+1)
                    elif i == 13:
                        dialed_numerator = xl_rowcol_to_cell(i - 3, start)
                        dialed_denominator = xl_rowcol_to_cell(i - 10, start)
                        attempt_numerator = xl_rowcol_to_cell(i - 3, start+1)
                        attempt_denominator = xl_rowcol_to_cell(i - 10, start+1)
                    elif i == 14:
                        dialed_numerator = xl_rowcol_to_cell(i - 4, start)
                        dialed_denominator = xl_rowcol_to_cell(i - 12, start)
                        attempt_numerator = xl_rowcol_to_cell(i - 4, start+1)
                        attempt_denominator = xl_rowcol_to_cell(i - 12, start+1)
                   
                    dialed_formula = "=IF({}".format(dialed_denominator)+">0,{}/{},0)".format(dialed_numerator, dialed_denominator) #=IF(E3>0,800/E3,0)
                    #dialed_formula = "={}/{}".format(dialed_numerator, dialed_denominator)
                    worksheet.write_formula(total_dialed_cell, dialed_formula, percent_with_decimal_format)
                    
                    if not attempt_denominator == 0:
                        attempt_formula = "={}/{}".format(attempt_numerator, attempt_denominator)
                        # worksheet.write_formula(total_attempt_cell, attempt_formula, percent_with_decimal_format)
                    else:
                        attempt_formula = "=0" # not tried yet    
                total_data_dialed_formula = self.make_total_formula(1, i, end - 3, self.sheet_name)
                if i not in skip_rows:
                    total_attempt_formula = self.make_total_formula(2, i, end - 3, self.sheet_name)
                    #if not total_dialed_cell == 0:
                    total_intensity_formula = "=ROUND(IF({}".format(total_dialed_cell)+">0,{}/{},0), 1)".format(total_attempt_cell, total_dialed_cell)
                    #total_intensity_formula = "=ROUND({}/{}, 1)".format(total_attempt_cell, total_dialed_cell)
                    if i < 16:
                        worksheet.write_formula(i, start + 1, total_attempt_formula)
                        worksheet.write_formula(i, start + 2, total_intensity_formula, decimal_format)
                total_skip_rows.extend(percentage_rows)
                if i not in total_skip_rows:
                    worksheet.write_formula(i, start, total_data_dialed_formula)
        


if __name__ == "__main__":
    os.environ['AWS_ACCESS_KEY_ID'] = AWS_ACCESS_KEY_ID
    os.environ['AWS_SECRET_ACCESS_KEY'] = AWS_SECRET_ACCESS_KEY
    writer = pd.ExcelWriter(filename, engine='xlsxwriter')
    e = ExcelUtils(writer)
    required_sheets =  {
        
        "MTD_(City_Wise)_PR":['MTD','policyreview',DB_TABLE,[155,'FA','FB',[156,157,158,159,160,161],['FC','FD','FE','FF','FG','FH','FI','FJ','FK','FL','FM','FN']]],
        "MTD_(City_Wise)_MC":['MTD','maturityclaim',DB_TABLE,[141,'EM','EN',[142,143,144,145,146,147],['EO','EP','EQ','ER','ES','ET','EU','EV','EW','EX','EY','EZ']]],
        "MTD_(City_Wise)_WB":['MTD','winback',DB_TABLE,[127,'DY','DZ',[128,129,130,131,132,133],['EA','EB','EC','ED','EE','EF','EG','EH','EI','EJ','EK','EL']]],
        "MTD_(City_Wise)_Allcampaigns":['MTD','',DB_TABLE,[113,'DK','DL',[114,115,116,117,118,119],['DM','DN','DO','DP','DQ','DR','DS','DT','DU','DV','DW','DX']]],
        "YTD_PR":['YTD','policyreview',DB_TABLE,[99,'CW','CX',[100,101,102,103,104,105],['CY','CZ','DA','DB','DC','DD','DE','DF','DG','DH','DI','DJ']]],
        "YTD_MC":['YTD','maturityclaim',DB_TABLE,[85,'CI','CJ',[86,87,88,89,90,91],['CK','CL','CM','CM','CN','CP','CQ','CS','CS','CT','CU','CV']]],
        "YTD_WB":['YTD','winback',DB_TABLE,[71,'BU','BV',[72,73,74,75,76,77],['BW','BX','BY','BZ','CA','CB','CC','CD','CE','CF','CG','CH']]],
        "YTD_Allcampaigns": ['YTD','',DB_TABLE,[57,'BG','BH',[58,59,60,61,62,63],['BI','BJ','BK','BL','BM','BN','BO','BP','BQ','BR','BS','BT']]],
        "Since_launch_PR": ['','policyreview',DB_TABLE,[43,'AS','AT',[44,45,46,47,48,49],['AU','AV','AW','AX','AY','AZ','BA','BB','BC','BD','BE','BF']]],
        "Since_launch_MC": ['','maturityclaim',DB_TABLE,[29,'AE','AF',[30,31,32,33,34,35],['AG','AH','AI','AJ','AK','AL','AM','AN','AO','AP','AQ','AR']]],
        "Since_launch_WB": ['','winback',DB_TABLE,[15,'Q','R',[16,17,18,19,20,21],['S','T','U','V','W','X','Y','Z','AA','AB','AC','AD']]], 
        "Since_launch_Allcampaigns":['','',DB_TABLE,[1,'C','D',[2,3,4,5,6,7],['E','F','G','H','I','J','K','L','M','N','O','P']]] # we need to keep blank to fetch every thing 
    }
    from datetime import datetime
    #yesterday_day = datetime.now().day - 1
    required_day_wise_sheets =  {
        
        "Yesterday_PR":['MTD','policyreview','callLogs',0,[267,'JI','JJ',[268,269,270,271,272,273],['JK','JL','JM','JN','JO','JP','JQ','JR','JS','JT','JU','JV']]],
        "Yesterday_MC":['MTD','maturityclaim','callLogs',0,[253,'IU','IV',[254,255,256,257,258,259],['IW','IX','IY','IZ','JA','JB','JC','JD','JE','JF','JG','JH']]],
        "Yesterday_WB":['MTD','winback','callLogs',0,[239,'IG','IH',[240,241,242,243,244,245],['II','IJ','IK','IL','IM','IN','IO','IP','IQ','IR','IS','IT']]],
        "Yesterday_Allcampaigns": ['MTD','','callLogs',0,[225,'HS','HT',[226,227,228,229,230,231],['HU','HV','HW','HX','HY','HZ','IA','IB','IC','ID','IE','IF']]],
        "MTD_(Day_Wise)_PR": ['MTD','policyreview','callLogs',1,[211,'HE','HF',[212,213,214,215,216,217],['HG','HH','HI','HJ','HK','HL','HM','HN','HO','HP','HQ','HR']]],
        "MTD_(Day_Wise)_MC": ['MTD','maturityclaim','callLogs',1,[197,'GQ','GR',[198,199,200,201,202,203],['GS','GT','GU','GV','GW','GX','GY','GZ','HA','HB','HC','HD']]],
        "MTD_(Day_Wise)_WB": ['MTD','winback','callLogs',1,[183,'GC','GD',[184,185,186,187,188,189],['GE','GF','GG','GH','GI','GJ','GK','GL','GM','GN','GO','GP']]], 
        "MTD_(Day_Wise)_Allcampaigns":['MTD','','callLogs',1,[169,'FO','FP',[170,171,172,173,174,175],['FQ','FR','FS','FT','FU','FV','FW','FX','FY','FZ','GA','GB']]] # we need to keep blank to fetch every thing 
    }

    #print(e.get_cities())
    e.generate_excel_rough_work('CalculationSheet')
    #days wise sheets
    for sheet,param_list in required_day_wise_sheets.items():
        e.active_sheets.update({sheet:param_list[4]})
        e.generate_excel_day_wise(sheet,p1=param_list[0],p2=param_list[1],read_table=param_list[2],day_number=param_list[3])
    #YTD,MTD sheets
    for sheet,param_list in required_sheets.items():
        e.active_sheets.update({sheet:param_list[3]})
        e.generate_excel(sheet,p1=param_list[0],p2=param_list[1],read_table=param_list[2])
    
    #e.generate_excel('SheetName2')
    
    worksheet = writer.sheets['CalculationSheet']
    worksheet.hide()

    writer.save()
    #subject = "MIS - {}".format(datetime.datetime.now().strftime("%d-%m-%Y"))
    #send_email_with_attachment(subject, "noreply@avananta.com", EMAIL_LIST, "", filename)
