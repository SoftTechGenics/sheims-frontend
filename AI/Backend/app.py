from flask import Flask , render_template
from flask_mysqldb import MySQL,MySQLdb



app = Flask(__name__)
app.secret_key = 'many random bytes'


app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = 'artificial_intelligence'
app.config['MYSQL_CURSORCLASS'] = 'DictCursor'
mysql = MySQL(app)


@app.route('/')
def Index():
    cursor = mysql.connection.cursor()
    cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    cur.execute("SELECT * FROM `artificial intelligence`")
    data = cur.fetchall()
    cur2 = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    cur2.execute("SELECT * FROM `student`")
    data2 = cur2.fetchall()

    return render_template("index.html",teachers=data, students=data2)


@app.route('/update')
def update():
    return ("<h1>Update Successfully</h1>")

@app.route('/delete')
def delete():


    return ("<h1>Delete Successfully</h1>")



if __name__ == "__main__":
    app.run(debug=True)
