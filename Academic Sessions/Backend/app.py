from flask import Flask , render_template
from flask_mysqldb import MySQL,MySQLdb



app = Flask(__name__)
app.secret_key = 'many random bytes'


app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = 'admission_sessions'
app.config['MYSQL_CURSORCLASS'] = 'DictCursor'
mysql = MySQL(app)


@app.route('/')
def Index():
    cur = mysql.connection.cursor()
    cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    cur.execute("SELECT * FROM `admission_sessions`")
    data = cur.fetchall()
    cur2 = mysql.connection.cursor()
    cur2 = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    cur2.execute("SELECT * FROM `holidays`")
    data2 = cur2.fetchall()
    cur.close()

    return render_template("index.html" , classes = data, holi=data2)
 
    





if __name__ == "__main__":
    app.run(debug=True)
