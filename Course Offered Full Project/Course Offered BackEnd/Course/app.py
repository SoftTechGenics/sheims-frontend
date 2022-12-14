
from flask import Flask, render_template, request, jsonify
from flask_mysqldb import MySQL,MySQLdb #pip install flask-mysqldb https://github.com/alexferl/flask-mysqldb
  
app = Flask(__name__)
         
app.secret_key = "caircocoders-ednalan"
         
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = 'course offered'
app.config['MYSQL_CURSORCLASS'] = 'DictCursor'
mysql = MySQL(app)
      
@app.route('/')
def index():
    cursor = mysql.connection.cursor()
    cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    cur.execute("SELECT * FROM `fo_arts_language`")
    data = cur.fetchall() 
    cur2 = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    cur2.execute("SELECT * FROM `fo_management_science_and_commerce`")
    data2 = cur2.fetchall() 

    cur3 = mysql.connection.cursor(MySQLdb.cursors.DictCursor)      
    cur3.execute("SELECT * FROM `fo_veterinary_animal_sciences`")
    data3 = cur3.fetchall()
    cur4 = mysql.connection.cursor(MySQLdb.cursors.DictCursor)      
    cur4.execute("SELECT * FROM `fo_agriculture_environment`")
    data4 = cur4.fetchall()
    cur5 = mysql.connection.cursor(MySQLdb.cursors.DictCursor)      
    cur5.execute("SELECT * FROM `fo_medical-allied_health_science`")
    data5 = cur5.fetchall()
    cur6 = mysql.connection.cursor(MySQLdb.cursors.DictCursor)      
    cur6.execute("SELECT * FROM `fo_istamic_learning`")
    data6 = cur6.fetchall()
    cur7 = mysql.connection.cursor(MySQLdb.cursors.DictCursor)      
    cur7.execute("SELECT * FROM `fo_chemical_biological_science`")
    data7 = cur7.fetchall()
    cur8 = mysql.connection.cursor(MySQLdb.cursors.DictCursor)      
    cur8.execute("SELECT * FROM `computing`")
    data8 = cur8.fetchall()
    cur9 = mysql.connection.cursor(MySQLdb.cursors.DictCursor)      
    cur9.execute("SELECT * FROM `fo_social_sciences`")
    data9 = cur9.fetchall()
    # cur10 = mysql.connection.cursor(MySQLdb.cursors.DictCursor)      
    # cur10.execute("SELECT * FROM `fo_pharmacy`")
    # data10 = cur10.fetchall()
   
   
   


  
    return render_template('index.html', students=data,students2=data2,students3=data3,students4=data4,students5=data5,students6=data6,students7=data7,students8=data8,students9=data9)





if __name__ == "__main__":
    app.run(debug=True)