from flask import Flask, render_template, request, url_for, flash
from werkzeug.utils import redirect
from flask_mysqldb import MySQL
app = Flask(__name__)
app.secret_key = 'many random bytes'
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = 'crud'
mysql = MySQL(app)
@app.route('/')
def Index():
    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM SM")
    data = cur.fetchall()
    cur.close()
    return render_template('index.html', SM=data)
@app.route('/insert', methods = ['POST'])
def insert():
    if request.method == "POST":
        flash("Data Inserted Successfully")
        name = request.form['name']
        email = request.form['email']
        phone = request.form['Salary']
        cur = mysql.connection.cursor()
        cur.execute("INSERT INTO SM (name, email, Salary) VALUES (%s, %s, %s)", (name, email, phone))
        mysql.connection.commit()
        return redirect(url_for('Index'))
@app.route('/delete/<string:id_data>', methods = ['GET'])
def delete(id_data):
    flash("Record Has Been Deleted Successfully")
    cur = mysql.connection.cursor()
    cur.execute("DELETE FROM SM WHERE id=%s", (id_data,))
    mysql.connection.commit()
    return redirect(url_for('Index'))
@app.route('/update', methods= ['POST', 'GET'])
def update():
    if request.method == 'POST':
        id_data = request.form['id']
        name = request.form['name']
        email = request.form['email']
        Salary = request.form['Salary']
        cur = mysql.connection.cursor()
        cur.execute("""
        UPDATE SM SET name=%s, email=%s,  Salary=%s
        WHERE id=%s
        """, (name, email, Salary, id_data))
        flash("Data Updated Successfully")
        return redirect(url_for('Index'))




if __name__ == "__main__":
    app.run(debug=True)
