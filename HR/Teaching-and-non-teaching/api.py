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

class Teaching(Resource):
    def get(self):
        cur = mysql.connection.cursor()
        cur.execute("SELECT  * FROM teaching")
        data = cur.fetchall()
        return jsonify(data)
    
    def post(self):
        teacher_name = request.form['Name']
        teacher_dept = request.form['Department']
        teacher_phone = request.form['Phone']
        cur = mysql.connection.cursor()
        cur.execute("INSERT INTO teaching (Name, Department, Phone) VALUES (%s, %s, %s)", (teacher_name, teacher_dept, teacher_phone))
        mysql.connection.commit()
        response = jsonify(message='Teacher added successfully.', id=cur.lastrowid)
        #response.data = cursor.lastrowid
        response.status_code = 200
        return(response)


class NonTeaching(Resource):
    def get(self):
        cur = mysql.connection.cursor()
        cur.execute("SELECT  * FROM nonteaching")
        data = cur.fetchall()
        return jsonify(data)
    
    def post(self):
        person_name = request.form['Name']
        person_desig = request.form['Designation']
        person_phone = request.form['Phone']
        cur = mysql.connection.cursor()
        cur.execute("INSERT INTO nonteaching (Name, Designation, Phone) VALUES (%s, %s, %s)", (person_name, person_desig, person_phone))
        mysql.connection.commit()
        response = jsonify(message='Non-Teaching staff person added successfully.', id=cur.lastrowid)
        #response.data = cursor.lastrowid
        response.status_code = 200
        return(response)

mysql = MySQL(app)
api = Api(app)

#http://127.0.0.1:5000/get-teaching
#http://127.0.0.1:5000/post-teaching
api.add_resource(Teaching, '/get-teaching', endpoint='get')
api.add_resource(Teaching, '/post-teaching', endpoint='post')
#http://127.0.0.1:5000/get-non-teaching
#http://127.0.0.1:5000/post-non-teaching
api.add_resource(NonTeaching, '/get-non-teaching', endpoint='getnew')
api.add_resource(NonTeaching, '/post-non-teaching', endpoint='postnew')

if __name__ == "__main__":
    app.run(debug=True)