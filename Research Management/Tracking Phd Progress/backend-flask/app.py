#app.py
from flask import Flask, render_template, request, jsonify
from flask_mysqldb import MySQL,MySQLdb #pip install flask-mysqldb https://github.com/alexferl/flask-mysqldb
  
app = Flask(__name__)
         
app.secret_key = "caircocoders-ednalan"
         
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = 'tracking_phd'
app.config['MYSQL_CURSORCLASS'] = 'DictCursor'
mysql = MySQL(app)
      
@app.route('/')
def index():
    cursor = mysql.connection.cursor()
    cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    cur.execute("SELECT * FROM `tracking_phd`")
    data = cur.fetchall() 

    return render_template('testing.html', students=data)


    if request.method == "POST":
        flash("Data Inserted Successfully")
        project = request.form['project']
        project_type = request.form['project_type']
        task = request.form['task']
        brainstorming = request.form['brainstorming']
        estimated_start_date = request.form['estimated_start_date']
        estimated_end_date = request.form['	estimated_end_date']
        estimated_duration = request.form['estimated_duration']
        assigned_to = request.form['assigned_to']
        cur = mysql.connection.cursor()
        cur.execute("INSERT INTO students (project,project_type,task,brainstorming,estimated_start_date,estimated_end_date,estimated_duration,assigned_to) VALUES (%s, %s,, %s, %s, %s, %s, %s, %s)", (teacher_name, qualifications))
        mysql.connection.commit()
        return redirect(url_for('Index'))

        @app.route('/delete/<string:id_data>', methods = ['GET'])
        def delete(id_data):
         flash("Record Has Been Deleted Successfully")
         cur = mysql.connection.cursor()
         cur.execute("DELETE FROM students WHERE id=%s", (id_data,))
         mysql.connection.commit()
         return redirect(url_for('Index'))






 
if __name__ == "__main__":
    app.run(debug=True)