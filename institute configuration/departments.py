from flask import Flask,jsonify, request
import json
from flask_mysqldb import MySQL
from flask_restful import Resource, Api

app = Flask(__name__)
app.secret_key = 'many-secret-key'

app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = 'departments'

class Departments(Resource):
    def getDepartments(self):
        cur = mysql.connection.cursor()
        cur.execute("SELECT  * FROM Departments")
        data = cur.fetchall()
        return jsonify(data)
    
    def addDepartments(self):
        depName = request.form['department_name']
        fecultyName = request.form['Feculty_name']
        campus = request.form['Campus']
        cur = mysql.connection.cursor()
        cur.execute("INSERT INTO Departments (department_name, Feculty_Name,campus) VALUES (%s, %s,%s)", (depName, fecultyName,campus))
        mysql.connection.commit()
        response = jsonify(message='Departments added successfully.', id=cur.lastrowid)
        response.status_code = 200
        return(response)

    def dellDepartments(id_data):
        cur = mysql.connection.cursor()
        cur.execute("DELETE FROM Departments WHERE id=%s", (id_data,))
        mysql.connection.commit()
        response = jsonify(message='Departments Deleted successfully.', id=cur.lastrowid)
        response.status_code = 200
        return(response) 

    def updateDepartments(self):
        id_data = request.form['id']
        depName = request.form['department_name']
        fecultyName = request.form['Feculty_name']
        campus = request.form['Campus']
        cur = mysql.connection.cursor()
        cur.execute("""
               UPDATE Departments
               SET department_name=%s, Feculty_Name=%s,campus=%s
               WHERE id=%s
            """, (depName, fecultyName,campus, id_data))
        mysql.connection.commit()
        response = jsonify(message='Departments updated successfully.', id=cur.lastrowid)
        response.status_code = 200
        return(response)
mysql = MySQL(app)
api = Api(app)


api.add_resource(Departments, '/get-departments', endpoint='getDepartments')
api.add_resource(Departments, '/add-departments', endpoint='addDepartments')
api.add_resource(Departments, '/dell-departments/<string:id_data>', endpoint='dellDepartments')
api.add_resource(Departments, '/update-departments', endpoint='updateDepartments')

if __name__ == "__main__":
    app.run(debug=True)