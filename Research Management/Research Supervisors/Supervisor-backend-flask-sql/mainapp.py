# app.py
from flask import Flask, render_template, request, jsonify, flash, url_for, redirect
# pip install flask-mysqldb https://github.com/alexferl/flask-mysqldb
from flask_mysqldb import MySQL, MySQLdb

app = Flask(__name__)

app.secret_key = "caircocoders-ednalan"

app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = 'research_supervisors'
app.config['MYSQL_CURSORCLASS'] = 'DictCursor'
mysql = MySQL(app)


@app.route('/')
def index():
    return render_template('index.html')

@app.route('/foanimalscience')
def foanimalscience():
    cursor = mysql.connection.cursor()
    cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    cur.execute("SELECT * FROM `fo-animal-science`")
    data = cur.fetchall()
    return render_template('fo-animal-science.html', supervisors=data)


@app.route('/foanimalscience/delete/<string:id_data>', methods = ['GET'])
def delete(id_data):
    flash("Record Has Been Deleted Successfully")
    cur = mysql.connection.cursor()
    cur.execute("DELETE FROM `fo-animal-science` WHERE id=%s", (id_data,))
    mysql.connection.commit()
    return redirect(url_for('foanimalscience'))


@app.route('/foanimalscience/update',methods=['POST','GET'])
def update():

    cursor = mysql.connection.cursor()
    cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    if request.method == 'POST':
        id_data = request.form['id']
        name = request.form['supname']
        email = request.form['email']
        role = request.form['role']
        cur = mysql.connection.cursor()
        cur.execute("""
               UPDATE `fo-animal-science`
               SET supervisor_name=%s, email=%s, role=%s
               WHERE id=%s
            """, [name, email, role,int(id_data)])                      
        mysql.connection.commit()       
        cur.close()
        return redirect(url_for('index'))
 

@app.route('/foanimalscience/insert', methods = ['POST'])
def foanimalscienceinsert():

    if request.method == "POST":
        flash("Data Inserted Successfully")

        id = request.form['id']
        supname = request.form['supname']
        role = request.form['role']
        dept = request.form['dept']
        faculty = request.form['faculty']
        email = request.form['email']
        cur = mysql.connection.cursor()
        cur.execute("INSERT INTO fo-animal-science (id, supervisor_name,role,department,faculty,email) VALUES (%s, %s, %s,%s, %s, %s)", (id, supname, role,dept,faculty,email))
        mysql.connection.commit()
        return redirect(url_for('foanimalscience'))



@app.route('/foagri')
def foagri():
    cursor = mysql.connection.cursor()
    cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    cur.execute("SELECT * FROM `fo_agri`")
    data = cur.fetchall()
    return render_template('fo-agri.html', supervisors=data)

@app.route('/foagri/delete/<string:id_data>', methods = ['GET'])
def foagridelete(id_data):
    flash("Record Has Been Deleted Successfully")
    cur = mysql.connection.cursor()
    cur.execute("DELETE FROM `fo_agri` WHERE id=%s", (id_data,))
    mysql.connection.commit()
    return redirect(url_for('foagri'))
             
@app.route('/foagri/update',methods=['POST','GET'])
def foagriupdate():

    cursor = mysql.connection.cursor()
    cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    if request.method == 'POST':
        id_data = request.form['id']
        name = request.form['supname']
        email = request.form['email']
        role = request.form['role']
        cur = mysql.connection.cursor()
        cur.execute("""
               UPDATE fo_agri
               SET supervisor_name=%s, email=%s, role=%s
               WHERE id=%s
            """, [name, email, role,int(id_data)])                      
        mysql.connection.commit()       
        cur.close()
        return redirect(url_for('index'))

@app.route('/foagri/insert', methods = ['POST'])
def foagriinsert():

    if request.method == "POST":
        flash("Data Inserted Successfully")

        id = request.form['id']
        supname = request.form['supname']
        role = request.form['role']
        dept = request.form['dept']
        faculty = request.form['faculty']
        email = request.form['email']
        cur = mysql.connection.cursor()
        cur.execute("INSERT INTO fo_agri (id, supervisor_name,role,department,faculty,email) VALUES (%s, %s, %s,%s, %s, %s)", (id, supname, role,dept,faculty,email))
        mysql.connection.commit()
        return redirect(url_for('foagri'))



@app.route('/focomputing')
def focomputing():
    cursor = mysql.connection.cursor()
    cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    cur.execute("SELECT * FROM `fo_computing`")
    data = cur.fetchall()
    return render_template('fo-computing.html', supervisors=data)


@app.route('/focomputing/delete/<string:id_data>', methods = ['GET'])
def focomputingdelete(id_data):
    flash("Record Has Been Deleted Successfully")
    cur = mysql.connection.cursor()
    cur.execute("DELETE FROM `fo_computing` WHERE id=%s", (id_data,))
    mysql.connection.commit()
    return redirect(url_for('focomputing'))


@app.route('/focomputing/update',methods=['POST','GET'])
def focomputingupdate():

    cursor = mysql.connection.cursor()
    cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    if request.method == 'POST':
        id_data = request.form['id']
        name = request.form['supname']
        email = request.form['email']
        role = request.form['role']
        cur = mysql.connection.cursor()
        cur.execute("""
               UPDATE fo_computing
               SET supervisor_name=%s, email=%s, role=%s
               WHERE id=%s
            """, [name, email, role,int(id_data)])                      
        mysql.connection.commit()       
        cur.close()
        return redirect(url_for('index'))
 
@app.route('/focomputing/insert', methods = ['POST'])
def focomputinginsert():

    if request.method == "POST":
        flash("Data Inserted Successfully")

        id = request.form['id']
        supname = request.form['supname']
        role = request.form['role']
        dept = request.form['dept']
        faculty = request.form['faculty']
        email = request.form['email']
        cur = mysql.connection.cursor()
        cur.execute("INSERT INTO fo_computing (id, supervisor_name,role,department,faculty,email) VALUES (%s, %s, %s,%s, %s, %s)", (id, supname, role,dept,faculty,email))
        mysql.connection.commit()
        return redirect(url_for('focomputing')) 


@app.route('/foengineering')
def foengineering():
    cursor = mysql.connection.cursor()
    cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    cur.execute("SELECT * FROM `fo_engineering`")
    data = cur.fetchall()
    return render_template('fo-engineering.html', supervisors=data)

@app.route('/foengineering/delete/<string:id_data>', methods = ['GET'])
def foengineeringdelete(id_data):
    flash("Record Has Been Deleted Successfully")
    cur = mysql.connection.cursor()
    cur.execute("DELETE FROM `fo_engineering` WHERE id=%s", (id_data,))
    mysql.connection.commit()
    return redirect(url_for('foengineering'))



@app.route('/foengineering/update',methods=['POST','GET'])
def foengineeringupdate():

    cursor = mysql.connection.cursor()
    cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    if request.method == 'POST':
        id_data = request.form['id']
        name = request.form['supname']
        email = request.form['email']
        role = request.form['role']
        cur = mysql.connection.cursor()
        cur.execute("""
               UPDATE fo_engineering
               SET supervisor_name=%s, email=%s, role=%s
               WHERE id=%s
            """, [name, email, role,int(id_data)])                      
        mysql.connection.commit()       
        cur.close()
        return redirect(url_for('index'))
 
@app.route('/foengineering/insert', methods = ['POST'])
def foengineeringinsert():

    if request.method == "POST":
        flash("Data Inserted Successfully")

        id = request.form['id']
        supname = request.form['supname']
        role = request.form['role']
        dept = request.form['dept']
        faculty = request.form['faculty']
        email = request.form['email']
        cur = mysql.connection.cursor()
        cur.execute("INSERT INTO fo_engineering (id, supervisor_name,role,department,faculty,email) VALUES (%s, %s, %s,%s, %s, %s)", (id, supname, role,dept,faculty,email))
        mysql.connection.commit()
        return redirect(url_for('foengineering')) 



@app.route('/fomanagement')
def fomanagement():
    cursor = mysql.connection.cursor()
    cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    cur.execute("SELECT * FROM `fo_management`")
    data = cur.fetchall()
    return render_template('fo-management.html', supervisors=data)

@app.route('/fomanagement/delete/<string:id_data>', methods = ['GET'])
def fomanagementdelete(id_data):
    flash("Record Has Been Deleted Successfully")
    cur = mysql.connection.cursor()
    cur.execute("DELETE FROM `fo_management` WHERE id=%s", (id_data,))
    mysql.connection.commit()
    return redirect(url_for('fomanagement'))


@app.route('/fomanagement/update',methods=['POST','GET'])
def fomanagementupdate():

    cursor = mysql.connection.cursor()
    cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    if request.method == 'POST':
        id_data = request.form['id']
        name = request.form['supname']
        email = request.form['email']
        role = request.form['role']
        cur = mysql.connection.cursor()
        cur.execute("""
               UPDATE fo_management
               SET supervisor_name=%s, email=%s, role=%s
               WHERE id=%s
            """, [name, email, role,int(id_data)])                      
        mysql.connection.commit()       
        cur.close()
        return redirect(url_for('index'))

@app.route('/fomanagement/insert', methods = ['POST'])
def fomanagementinsert():

    if request.method == "POST":
        flash("Data Inserted Successfully")

        id = request.form['id']
        supname = request.form['supname']
        role = request.form['role']
        dept = request.form['dept']
        faculty = request.form['faculty']
        email = request.form['email']
        cur = mysql.connection.cursor()
        cur.execute("INSERT INTO fo_management (id, supervisor_name,role,department,faculty,email) VALUES (%s, %s, %s,%s, %s, %s)", (id, supname, role,dept,faculty,email))
        mysql.connection.commit()
        return redirect(url_for('fomanagement')) 


@app.route('/fopharmacy')
def fopharmacy():
    cursor = mysql.connection.cursor()
    cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    cur.execute("SELECT * FROM `fo_pharmacy`")
    data = cur.fetchall()
    return render_template('fo-pharmacy.html', supervisors=data)


@app.route('/fopharmacy/delete/<string:id_data>', methods = ['GET'])
def fopharmacydelete(id_data):
    flash("Record Has Been Deleted Successfully")
    cur = mysql.connection.cursor()
    cur.execute("DELETE FROM `fo_pharmacy` WHERE id=%s", (id_data,))
    mysql.connection.commit()
    return redirect(url_for('fopharmacy'))

@app.route('/fomanagement/update',methods=['POST','GET'])
def fopharmacyupdate():

    cursor = mysql.connection.cursor()
    cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    if request.method == 'POST':
        id_data = request.form['id']
        name = request.form['supname']
        email = request.form['email']
        role = request.form['role']
        cur = mysql.connection.cursor()
        cur.execute("""
               UPDATE fo_pharmacy
               SET supervisor_name=%s, email=%s, role=%s
               WHERE id=%s
            """, [name, email, role,int(id_data)])                      
        mysql.connection.commit()       
        cur.close()
        return redirect(url_for('index'))




@app.route('/fopharmacy/insert', methods = ['POST'])
def fopharmacyinsert():

    if request.method == "POST":
        flash("Data Inserted Successfully")

        id = request.form['id']
        supname = request.form['supname']
        role = request.form['role']
        dept = request.form['dept']
        faculty = request.form['faculty']
        email = request.form['email']
        cur = mysql.connection.cursor()
        cur.execute("INSERT INTO fo_pharmacy (id, supervisor_name,role,department,faculty,email) VALUES (%s, %s, %s,%s, %s, %s)", (id, supname, role,dept,faculty,email))
        mysql.connection.commit()
        return redirect(url_for('fopharmacy')) 




@app.route('/fomedicine')
def fomedicine():
    cursor = mysql.connection.cursor()
    cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    cur.execute("SELECT * FROM `fo_medicine`")
    data = cur.fetchall()
    return render_template('fo-medicine.html', supervisors=data)



@app.route('/fomedicine/delete/<string:id_data>', methods = ['GET'])
def fomedicinedelete(id_data):
    flash("Record Has Been Deleted Successfully")
    cur = mysql.connection.cursor()
    cur.execute("DELETE FROM `fo_medicine` WHERE id=%s", (id_data,))
    mysql.connection.commit()
    return redirect(url_for('fomedicine'))


@app.route('/fomedicine/update',methods=['POST','GET'])
def fomedicineupdate():

    cursor = mysql.connection.cursor()
    cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    if request.method == 'POST':
        id_data = request.form['id']
        name = request.form['supname']
        email = request.form['email']
        role = request.form['role']
        cur = mysql.connection.cursor()
        cur.execute("""
               UPDATE fo_medicine
               SET supervisor_name=%s, email=%s, role=%s
               WHERE id=%s
            """, [name, email, role,int(id_data)])                      
        mysql.connection.commit()       
        cur.close()
        return redirect(url_for('index'))



@app.route('/fomedicine/insert', methods = ['POST'])
def fomedicineinsert():

    if request.method == "POST":
        flash("Data Inserted Successfully")

        id = request.form['id']
        supname = request.form['supname']
        role = request.form['role']
        dept = request.form['dept']
        faculty = request.form['faculty']
        email = request.form['email']
        cur = mysql.connection.cursor()
        cur.execute("INSERT INTO fo_medicine (id, supervisor_name,role,department,faculty,email) VALUES (%s, %s, %s,%s, %s, %s)", (id, supname, role,dept,faculty,email))
        mysql.connection.commit()
        return redirect(url_for('fomedicine')) 






@app.route('/fosocialscience')
def fosocialscience():
    cursor = mysql.connection.cursor()
    cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    cur.execute("SELECT * FROM `fo_socialscience`")
    data = cur.fetchall()
    return render_template('fo-socialscience.html', supervisors=data)

@app.route('/fosocialscience/delete/<string:id_data>', methods = ['GET'])
def fosocialsciencedelete(id_data):
    flash("Record Has Been Deleted Successfully")
    cur = mysql.connection.cursor()
    cur.execute("DELETE FROM `fo_socialscience` WHERE id=%s", (id_data,))
    mysql.connection.commit()
    return redirect(url_for('fosocialscience'))



@app.route('/fosocialscience/update',methods=['POST','GET'])
def fosocialscienceupdate():

    cursor = mysql.connection.cursor()
    cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    if request.method == 'POST':
        id_data = request.form['id']
        name = request.form['supname']
        email = request.form['email']
        role = request.form['role']
        cur = mysql.connection.cursor()
        cur.execute("""
               UPDATE fo_socialscience
               SET supervisor_name=%s, email=%s, role=%s
               WHERE id=%s
            """, [name, email, role,int(id_data)])                      
        mysql.connection.commit()       
        cur.close()
        return redirect(url_for('index'))

@app.route('/fosocialscience/insert', methods = ['POST'])
def fosocialscienceinsert():

    if request.method == "POST":
        flash("Data Inserted Successfully")

        id = request.form['id']
        supname = request.form['supname']
        role = request.form['role']
        dept = request.form['dept']
        faculty = request.form['faculty']
        email = request.form['email']
        cur = mysql.connection.cursor()
        cur.execute("INSERT INTO fo_socialscience (id, supervisor_name,role,department,faculty,email) VALUES (%s, %s, %s,%s, %s, %s)", (id, supname, role,dept,faculty,email))
        mysql.connection.commit()
        return redirect(url_for('fosocialscience')) 

if __name__ == "__main__":
    app.run(debug=True)