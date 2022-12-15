from flask import Flask, render_template, request, jsonify
from flask_mysqldb import MySQL,MySQLdb
  
app = Flask(__name__)
         
app.secret_key = "caircocoders-ednalan"
         
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = 'student_progress_details'
app.config['MYSQL_CURSORCLASS'] = 'DictCursor'
mysql = MySQL(app)
      
@app.route('/')
def index():
    cursor = mysql.connection.cursor()
    cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    cur.execute("SELECT * FROM `student_progress_details`")
    data = cur.fetchall() 

    cur1 = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    cur1.execute("SELECT * FROM `semester_1`")
    data1 = cur1.fetchall() 
    
    cur2 = mysql.connection.cursor(MySQLdb.cursors.DictCursor)      
    cur2.execute("SELECT * FROM `semester_2`")
    data2 = cur2.fetchall()
    
    cur3 = mysql.connection.cursor(MySQLdb.cursors.DictCursor)      
    cur3.execute("SELECT * FROM `semester_3`")
    data3 = cur3.fetchall()
    
    cur4 = mysql.connection.cursor(MySQLdb.cursors.DictCursor)      
    cur4.execute("SELECT * FROM `semester_4`")
    data4 = cur4.fetchall()


   


  
    return render_template('index.html', progress=data,progress_1=data1,progress_2=data2,progress_3=data3,progress_4=data4)




if __name__ == "__main__":
    app.run(debug=True)