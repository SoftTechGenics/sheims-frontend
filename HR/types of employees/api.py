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
app.config['MYSQL_DB'] = 'crud'

class Faculty(Resource):
    def get(self):
        cur = mysql.connection.cursor()
        cur.execute("SELECT  * FROM faculty")
        data = cur.fetchall()
        return jsonify(data)
    
    def post(self):
        faculty_types = request.form['faculty_types']
        number_of_employees = request.form['number_of_employees']
        cur = mysql.connection.cursor()
        cur.execute("INSERT INTO faculty (faculty_types, number_of_employees) VALUES (%s, %s)", (faculty_types, number_of_employees))
        mysql.connection.commit()
        response = jsonify(message='added successfully.', id=cur.lastrowid)
        #response.data = cursor.lastrowid
        response.status_code = 200
        return(response)


class Management(Resource):
    def get(self):
        cur = mysql.connection.cursor()
        cur.execute("SELECT  * FROM management ")
        data = cur.fetchall()
        return jsonify(data)
    
    def post(self):
        employees_types = request.form['Employees_Types']
        number_of_employees = request.form['number_of_employees']
        cur = mysql.connection.cursor()
        cur.execute("INSERT INTO management (Employees_Types, number_of_employees) VALUES (%s, %s)", (employees_types, number_of_employees))
        mysql.connection.commit()
        response = jsonify(message='added successfully.', id=cur.lastrowid)
        #response.data = cursor.lastrowid
        response.status_code = 200
        return(response)
mysql = MySQL(app)
api = Api(app)

#http://127.0.0.1:5000/get-faculty
#http://127.0.0.1:5000/post-faculty
api.add_resource(Faculty, '/get-faculty', endpoint='get')
api.add_resource(Faculty, '/post-faculty', endpoint='post')
#http://127.0.0.1:5000/get-management
#http://127.0.0.1:5000/post-management
api.add_resource(Management, '/get-management', endpoint='getnew')
api.add_resource(Management, '/post-management', endpoint='postnew')

if __name__ == "__main__":
    app.run(debug=True)