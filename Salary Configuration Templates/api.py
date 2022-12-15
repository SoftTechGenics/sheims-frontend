from flask import Flask, jsonify, request
from flask_mysqldb import MySQL
from flask_restful import Resource, Api

app = Flask(__name__)
app.secret_key = 'many-secret-key'

app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = 'teachers_db'

class SalaryTemplate(Resource):
    def get(self):
        cur = mysql.connection.cursor()
        cur.execute("SELECT  * FROM salary_templates")
        data = cur.fetchall()
        return jsonify(data)
    
    def post(self):
        template_name = request.form['template_name']
        items = request.form['items']
        total_amount = request.form['total_amount']
        cur = mysql.connection.cursor()
        cur.execute("INSERT INTO salary_templates (template_name, items, total_amount) VALUES (%s, %s, %s)", (template_name, items, total_amount))
        mysql.connection.commit()
        response = jsonify(message='Template added successfully.', id=cur.lastrowid)
        response.status_code = 200
        return(response)

mysql = MySQL(app)
api = Api(app)

api.add_resource(SalaryTemplate, '/get-templates', endpoint='get')
api.add_resource(SalaryTemplate, '/post-template', endpoint='post')

if __name__ == "__main__":
    app.run(debug=True)
