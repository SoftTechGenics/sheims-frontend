from flask import Flask, render_template, request, redirect, url_for, flash
from flask_mysqldb import MySQL



app = Flask(__name__)
app.secret_key = 'many random bytes'

app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = 'assignment_db'

mysql = MySQL(app)



@app.route('/')
def Index():
    cur = mysql.connection.cursor()
    cur.execute("SELECT  * FROM teachers")
    data = cur.fetchall()
    cur.close()




    return render_template('new.html', teachers=data )



@app.route('/insert', methods = ['POST'])
def insert():

    if request.method == "POST":
        flash("Data Inserted Successfully")
        teacher_name = request.form['teacher_name']
        qualifications = request.form['qualifications']
        cur = mysql.connection.cursor()
        cur.execute("INSERT INTO teachers (teacher_name, qualifications) VALUES (%s, %s)", (teacher_name, qualifications))
        mysql.connection.commit()
        return redirect(url_for('Index'))




@app.route('/delete/<string:id_data>', methods = ['GET'])
def delete(id_data):
    flash("Record Has Been Deleted Successfully")
    cur = mysql.connection.cursor()
    cur.execute("DELETE FROM teachers WHERE id=%s", (id_data,))
    mysql.connection.commit()
    return redirect(url_for('Index'))





@app.route('/update',methods=['POST','GET'])
def update():

    if request.method == 'POST':
        id_data = request.form['id']
        teacher_name = request.form['teacher_name']
        qualifications = request.form['qualifications']
        
        cur = mysql.connection.cursor()
        cur.execute("""
               UPDATE teachers
               SET teacher_name=%s, qualifications=%s
               WHERE id=%s
            """, (teacher_name, qualifications, id_data))
        flash("Data Updated Successfully")
        mysql.connection.commit()
        return redirect(url_for('Index'))









if __name__ == "__main__":
    app.run(debug=True)
