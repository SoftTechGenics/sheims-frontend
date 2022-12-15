#https://pythonbasics.org/flask-rest-api/
#https://www.opentechguides.com/how-to/article/python/210/flask-mysql-crud.html
#https://flask-restful.readthedocs.io/en/latest/
#pip install flask-restful
from flask import Flask, render_template, jsonify, request
import json
from flask_mysqldb import MySQL
from flask_restful import Resource, Api

app = Flask(__name__)
app.secret_key = 'many-secret-key'

app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = 'cruds'

#-------------------------------Regular Employees--------------------

class Regular(Resource):
    def get(self):
        cur = mysql.connection.cursor()
        cur.execute("SELECT  * FROM regular")
        data = cur.fetchall()
        return jsonify(data)
    
    def post(self):
        emp_name = request.form['Name']
        dept = request.form['Department']
        phone = request.form['Phone']
        cur = mysql.connection.cursor()
        cur.execute("INSERT INTO regular (Name, Department,Phone) VALUES (%s, %s,%s)", (emp_name, dept,phone))
        mysql.connection.commit()
        response = jsonify(message='Regular Employee added successfully.', id=cur.lastrowid)
        #response.data = cursor.lastrowid
        response.status_code = 200
        return(response)


        #-------------------------------Daily Employees------------------------

class Daily(Resource):
    def get(self):
        cur = mysql.connection.cursor()
        cur.execute("SELECT  * FROM daily")
        data = cur.fetchall()
        return jsonify(data)
    
    def post(self):
        emp_name = request.form['Name']
        dept = request.form['Department']
        phone = request.form['Phone']
        cur = mysql.connection.cursor()
        cur.execute("INSERT INTO daily (Name, Department,Phone) VALUES (%s, %s,%s)", (emp_name, dept,phone))
        mysql.connection.commit()
        response = jsonify(message='Daily Employee added successfully.', id=cur.lastrowid)
        #response.data = cursor.lastrowid
        response.status_code = 200
        return(response)

        # --------------------------Contract Employees----------------------------

class Contract(Resource):
    def get(self):
        cur = mysql.connection.cursor()
        cur.execute("SELECT  * FROM contract")
        data = cur.fetchall()
        return jsonify(data)
    
    def post(self):
        emp_name = request.form['Name']
        dept = request.form['Department']
        phone = request.form['Phone']
        cur = mysql.connection.cursor()
        cur.execute("INSERT INTO contract (Name, Department,Phone) VALUES (%s, %s,%s)", (emp_name, dept,phone))
        mysql.connection.commit()
        response = jsonify(message='contract Employee added successfully.', id=cur.lastrowid)
        #response.data = cursor.lastrowid
        response.status_code = 200
        return(response)

        # -----------------------------Others Employees-------------------------

class Others(Resource):
    def get(self):
        cur = mysql.connection.cursor()
        cur.execute("SELECT  * FROM others")
        data = cur.fetchall()
        return jsonify(data)
    
    def post(self):
        emp_name = request.form['Name']
        designation = request.form['Designation']
        phone = request.form['Phone']
        cur = mysql.connection.cursor()
        cur.execute("INSERT INTO others (Name, Designation,Phone) VALUES (%s, %s,%s)", (emp_name, designation,phone))
        mysql.connection.commit()
        response = jsonify(message='others Employee added successfully.', id=cur.lastrowid)
        #response.data = cursor.lastrowid
        response.status_code = 200
        return(response)  

mysql = MySQL(app)
api = Api(app)

#http://127.0.0.1:5000//get-regular-emp
#http://127.0.0.1:5000//post-regular-emp
api.add_resource(Regular, '/get-regular-emp', endpoint='get')
api.add_resource(Regular, '/post-regular-emp', endpoint='post')


#http://127.0.0.1:5000/get-daily-emp
#http://127.0.0.1:5000/post-daily-emp
api.add_resource(Daily, '/get-daily-emp', endpoint='getd')
api.add_resource(Daily, '/post-daily-emp', endpoint='postd')


#http://127.0.0.1:5000/get-contract-emp
#http://127.0.0.1:5000/post-contract-emp
api.add_resource(Contract, '/get-contract-emp', endpoint='getc')
api.add_resource(Contract, '/post-contract-emp', endpoint='postc')


#http://127.0.0.1:5000/get-other-emp
#http://127.0.0.1:5000/post-other-emp
api.add_resource(Others, '/get-others-emp', endpoint='geto')
api.add_resource(Others, '/post-others-emp', endpoint='posto')

if __name__ == "__main__":
    app.run(debug=True)