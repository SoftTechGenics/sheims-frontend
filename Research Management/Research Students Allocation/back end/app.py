#app.py
from flask import Flask, render_template, request, jsonify,flash,redirect,url_for
from flask_mysqldb import MySQL,MySQLdb #pip install flask-mysqldb https://github.com/alexferl/flask-mysqldb
  
app = Flask(__name__)
         
app.secret_key = "caircocoders-ednalan"
         
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = 'students_allocation'
app.config['MYSQL_CURSORCLASS'] = 'DictCursor'
mysql = MySQL(app)


@app.route('/')
def index():
    cursor = mysql.connection.cursor()
    cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    cur.execute("SELECT * FROM `students_allocation`")
    data = cur.fetchall() 
   
    
    return render_template('index.html', students=data)

@app.route('/insert', methods = ['POST'])
def insert():

    if request.method == "POST":
        flash("Data Inserted Successfully")
        Rg_no = request.form['R.g No']
        Name = request.form['Name']
        Faculty = request.form['Faculty']
        Supervisor_Name = request.form['Supervisor Name']
        cur = mysql.connection.cursor()
        cur.execute("INSERT INTO students_allocation (R.g No, Name,Faculty,Supervisor Name) VALUES (%s, %s)", (Rg_no, Name,Faculty,Supervisor_Name))
        mysql.connection.commit()
        return redirect(url_for('Index'))



@app.route('/delete/<string:id_data>', methods = ['GET'])
def delete(id_data):
    flash("Record Has Been Deleted Successfully")
    cur = mysql.connection.cursor()
    cur.execute("DELETE FROM students_allocation WHERE id=%s", (id_data,))
    mysql.connection.commit()
    return redirect(url_for('Index'))


@app.route('/update',methods=['POST','GET'])
def update():

    if request.method == 'POST':
        id_data = request.form['id']
        rg_no = request.form['R.g No']
        name = request.form['name']
        supervisor_name = request.form['Supervisor Name']
        cur = mysql.connection.cursor()
        cur.execute("""
               UPDATE students
               SET name=%s, email=%s, phone=%s
               WHERE id=%s
            """, (name, rg_no, supervisor_name, id_data))
        flash("Data Updated Successfully")
        mysql.connection.commit()
        return redirect(url_for('Index'))


        
if __name__ == "__main__":
     app.run(debug=True)