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
"""undergraduate"""
class Undergraduate(Resource):
    def get(self):
        cur = mysql.connection.cursor()
        cur.execute("SELECT  * FROM undergraduate")
        data = cur.fetchall()
        return jsonify(data)
    
    def post(self):
       programs = request.form['programs']
        cur = mysql.connection.cursor()
        cur.execute("INSERT INTO undergraduate (programs) VALUES (%s)", (programs))
        mysql.connection.commit()
        response = jsonify(message='added successfully.', id=cur.lastrowid)
        #response.data = cursor.lastrowid
        response.status_code = 200
        return(response)

 """phd"""

        class Phd(Resource):
    def get(self):
        cur = mysql.connection.cursor()
        cur.execute("SELECT  * FROM phd")
        data = cur.fetchall()
        return jsonify(data)
    
    def post(self):
       programs = request.form['programs']
        cur = mysql.connection.cursor()
        cur.execute("INSERT INTO phd (programs) VALUES (%s)", (programs))
        mysql.connection.commit()
        response = jsonify(message='added successfully.', id=cur.lastrowid)
        #response.data = cursor.lastrowid
        response.status_code = 200
        return(response)


       """ms_programs"""

        class Ms_programs(Resource):
    def get(self):
        cur = mysql.connection.cursor()
        cur.execute("SELECT  * FROM ms_programs")
        data = cur.fetchall()
        return jsonify(data)
    
    def post(self):
       programs = request.form['programs']
        cur = mysql.connection.cursor()
        cur.execute("INSERT INTO ms_programs(programs) VALUES (%s)", (programs))
        mysql.connection.commit()
        response = jsonify(message='added successfully.', id=cur.lastrowid)
        #response.data = cursor.lastrowid
        response.status_code = 200
        return(response)

       """diploma"""

class Diploma(Resource):
    def get(self):
        cur = mysql.connection.cursor()
        cur.execute("SELECT  * FROM diploma")
        data = cur.fetchall()
        return jsonify(data)
    
    def post(self):
       programs = request.form['programs']
        cur = mysql.connection.cursor()
        cur.execute("INSERT INTO diploma(programs) VALUES (%s)", (programs))
        mysql.connection.commit()
        response = jsonify(message='added successfully.', id=cur.lastrowid)
        #response.data = cursor.lastrowid
        response.status_code = 200
        return(response)

       
       """adp_program"""
class Adp_program(Resource):
    def get(self):
        cur = mysql.connection.cursor()
        cur.execute("SELECT  * FROM adp_program")
        data = cur.fetchall()
        return jsonify(data)
    
    def post(self):
       programs = request.form['programs']
        cur = mysql.connection.cursor()
        cur.execute("INSERT INTO adp_program(programs) VALUES (%s)", (programs))
        mysql.connection.commit()
        response = jsonify(message='added successfully.', id=cur.lastrowid)
        #response.data = cursor.lastrowid
        response.status_code = 200
        return(response)

       
       """bs_5th_semster""" 
class Bs_5th_semster(Resource):
    def get(self):
        cur = mysql.connection.cursor()
        cur.execute("SELECT  * FROM bs_5th_semster")
        data = cur.fetchall()
        return jsonify(data)
    
    def post(self):
       programs = request.form['programs']
        cur = mysql.connection.cursor()
        cur.execute("INSERT INTO bs_5th_semster(programs) VALUES (%s)", (programs))
        mysql.connection.commit()
        response = jsonify(message='added successfully.', id=cur.lastrowid)
        #response.data = cursor.lastrowid
        response.status_code = 200
        return(response)


mysql = MySQL(app)
api = Api(app)

#http://127.0.0.1:5000/get-undergraduate
#http://127.0.0.1:5000/post-undergraduate
api.add_resource(undergraduate, '/get-Undergraduate', endpoint='get')
api.add_resource(undergraduate, '/post-Undergraduate', endpoint='post')

#http://127.0.0.1:5000/get-phd
#http://127.0.0.1:5000/post-phd
api.add_resource(Phd, '/get-Phd', endpoint='newget')
api.add_resource(Phd, '/post-Phd', endpoint='newpost')

#http://127.0.0.1:5000/get-ms_programs
#http://127.0.0.1:5000/post-ms_programs
api.add_resource(Ms_programs, '/get-Ms_programs', endpoint='getnew')
api.add_resource(Ms_programs, '/post-Ms_programs', endpoint='postnew')

#http://127.0.0.1:5000/get-diploma
#http://127.0.0.1:5000/post-diploma
api.add_resource(Diploma, '/get-Diploma', endpoint='getD')
api.add_resource(Diploma, '/post-Diploma', endpoint='postD')

#http://127.0.0.1:5000/get-adp_program
#http://127.0.0.1:5000/post-adp_program
api.add_resource(Adp_program, '/get-Adp_program', endpoint='getA')
api.add_resource(Adp_program, '/post-Adp_programa', endpoint='postA')

#http://127.0.0.1:5000/get-bs_5th_semster
#http://127.0.0.1:5000/post-5th_semster
api.add_resource(Bs_5th_semster, '/get-Bs_5th_semster', endpoint='getB')
api.add_resource(Bs_5th_semster, '/post-Bs_5th_semster', endpoint='postB')

if __name__ == "__main__":
    app.run(debug=True)