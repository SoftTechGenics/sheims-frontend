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
app.config['MYSQL_DB'] = 'assignment_db'

class Teacher(Resource):
    def get(self):
        cur = mysql.connection.cursor()
        cur.execute("SELECT  * FROM teachers")
        data = cur.fetchall()
        return jsonify(data)
    
    def post(self):
        teacher_name = request.form['teacher_name']
        qualifications = request.form['qualifications']
        cur = mysql.connection.cursor()
        cur.execute("INSERT INTO teachers (teacher_name, qualifications) VALUES (%s, %s)", (teacher_name, qualifications))
        mysql.connection.commit()
        response = jsonify(message='Teacher added successfully.', id=cur.lastrowid)
        #response.data = cursor.lastrowid
        response.status_code = 200
        return(response)

mysql = MySQL(app)
api = Api(app)

#http://127.0.0.1:5000/get-teachers
api.add_resource(Teacher, '/get-teachers', endpoint='get')
api.add_resource(Teacher, '/post-teacher', endpoint='post')

if __name__ == "__main__":
    app.run(debug=True)