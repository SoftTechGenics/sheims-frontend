#app.py
from flask import Flask, render_template, request, jsonify
from flask_mysqldb import MySQL,MySQLdb #pip install flask-mysqldb https://github.com/alexferl/flask-mysqldb
  
app = Flask(__name__)
         
app.secret_key = "caircocoders-ednalan"
         
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = 'testingdb'
app.config['MYSQL_CURSORCLASS'] = 'DictCursor'
mysql = MySQL(app)
      
@app.route('/')
def index():
    cursor = mysql.connection.cursor()
    cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    cur.execute("SELECT * FROM dragdrop ORDER BY listorder ASC")
    dragdrop = cur.fetchall() 
    return render_template('index.html', dragdrop=dragdrop)
    
 
@app.route("/updateList",methods=["POST","GET"])
def updateList():
    cursor = mysql.connection.cursor()
    cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    if request.method == 'POST':
        number_of_rows= cur.execute("SELECT * FROM dragdrop")    
        #print(number_of_rows)       
        getorder = request.form['order']    
        print(getorder)
        order = getorder.split(",", number_of_rows)
        count=0   
        for value in order:
            count +=1
            print(count)                       
            cur.execute("UPDATE dragdrop SET listorder = %s WHERE id = %s ", [count, value])
            mysql.connection.commit()       
        cur.close()
    return jsonify('Successfully Updated')
 
if __name__ == "__main__":
    app.run(debug=True)