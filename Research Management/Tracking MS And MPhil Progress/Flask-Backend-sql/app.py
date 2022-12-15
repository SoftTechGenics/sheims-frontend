from flask import Flask, render_template, request, jsonify
from flask_mysqldb import MySQL,MySQLdb
from flask import flash,redirect,url_for
app = Flask(__name__)
         
app.secret_key = "caircocoders-ednalan"
         
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = 'tracking-ms-and-mphil-progress'
app.config['MYSQL_CURSORCLASS'] = 'DictCursor'
mysql = MySQL(app)
      
@app.route('/')
def index():
    cursor = mysql.connection.cursor()
    cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    cur.execute("SELECT * FROM `tracking-ms-and-mphil-progress`")
    data = cur.fetchall() 
    return render_template('index.html', students=data)

@app.route('/insert', methods = ['POST'])
def insert():

    if request.method == "POST":
        flash("Data Inserted Successfully")
        project = request.form['project']
        project_type = request.form['project_type']
        task = request.form['task']
        brainstorming = request.form['brainstorming']
        estimated_start_date = request.form['estimated_start_date']
        estimated_finish_date = request.form['estimated_finish_date']
        estimated_duration = request.form['estimated_duration']
        assigned_to = request.form['assigned_to']
        cur = mysql.connection.cursor()
        cur.execute("INSERT INTO tracking-ms-and-mphil-progress (project,project_type,task,brainstorming,estimated_start_date,estimated_finish_date,estimated_duration,assigned_to) VALUES (%s, %s,%s,%s,%s,%s,%s,%s)", (project,project_type,task,brainstorming,estimated_start_date,estimated_finish_date,estimated_duration,assigned_to))
        mysql.connection.commit()
        return redirect(url_for('Index'))




@app.route('/delete/<string:id_data>', methods = ['GET'])
def delete(id_data):
    flash("Record Has Been Deleted Successfully")
    cur = mysql.connection.cursor()
    cur.execute("DELETE FROM students WHERE id=%s", (id_data,))
    mysql.connection.commit()
    return redirect (url_for('Index'))





@app.route('/update',methods=['POST','GET'])
def update():

    if request.method == 'POST':
        id_data = request.form['id']
        project = request.form['project']
        project_type = request.form['project_type']
        task = request.form['task']
        brainstorming = request.form['brainstorming']
        estimated_start_date = request.form['estimated_start_date']
        estimated_finish_date = request.form['estimated_finish_date']
        estimated_duration = request.form['estimated_duration']
        assigned_to = request.form['assigned_to']
        
        cur = mysql.connection.cursor()
        cur.execute("""
               UPDATE tracking-ms-and-mphil-progress
               SET project=%s, project_type=%s, task=%s, brainstorming=%s, estimated_start_date=%s, estimated_finish_date=%s, estimated_duration=%s, assigned_to=%s
               WHERE id=%s
            """, (project, project_type, task, brainstorming, estimated_start_date,estimated_finish_date,estimated_duration,assigned_to, id_data))
        flash("Data Updated Successfully")
        mysql.connection.commit()
        return redirect(url_for('Index'))
    
 

 
if __name__ == "__main__":
    app.run(debug=True)