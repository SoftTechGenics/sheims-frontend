from flask import Flask, jsonify, request
from flask_sqlalchemy import SQLAlchemy
from flask_marshmallow import Marshmallow
from flask_cors import CORS

app = Flask(__name__)
CORS(app)

app.secret_key = 'hello'
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql://root:''@localhost/flask'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False


db = SQLAlchemy(app)
ma = Marshmallow(app)




# class to create new table with attribute in databse 
class Courses(db.Model):
    id = db.Column(db.Integer , primary_key = True)
    Course_Code = db.Column(db.String(20))
    Course_Title = db.Column(db.String(50))
    Credit_Hours = db.Column(db.Integer)
    Semester = db.Column(db.Integer)
    Course_Type = db.Column(db.String(50))


    def __init__ (self, Course_Code, Course_Title, Credit_Hours, Semester, Course_Type):
        self.Course_Code = Course_Code
        self.Course_Title = Course_Title
        self.Credit_Hours = Credit_Hours
        self.Semester = Semester
        self.Course_Type = Course_Type




# class to serialize the data in database
class CoursesSchema(ma.Schema):
    class Meta:
        fields = ('id', 'Course_Code', 'Course_Title' , 'Credit_Hours' , 'Semester' , 'Course_Type')



course_schema = CoursesSchema()
courses_schema = CoursesSchema(many=True)





#get route to fetch all the data from database
@app.route('/get', methods = ['GET'])
def get_courses():
    all_Courses = Courses.query.all()
    result = courses_schema.dump(all_Courses)
    return jsonify(result)



#get route to fetch all the data from database order by semester
@app.route('/getsemester', methods = ['GET'])
def get_semester():
    all_Courses = Courses.query.order_by(Courses.Semester).all()
    result = courses_schema.dump(all_Courses)
    return jsonify(result)
    




#get route to fetch specific data in database
@app.route('/get/<id>', methods = ['GET'])
def post_course(id):
    course = Courses.query.get(id)
    return course_schema.jsonify(course)



#get route to fetch data by semesters in database
@app.route('/getsemester/<sm>', methods = ['GET'])
def post_semester(sm):
    course = Courses.query.filter_by(Semester = sm).all()
    return courses_schema.jsonify(course)



#add route to add the new data in the database
@app.route('/add', methods = ['POST'])
def add_courses():
    Course_Code = request.json['Course_Code']
    Course_Title = request.json['Course_Title']
    Credit_Hours = request.json['Credit_Hours']
    Semester = request.json['Semester']
    Course_Type = request.json['Course_Type']


    courses = Courses(Course_Code, Course_Title, Credit_Hours, Semester, Course_Type)
    db.session.add(courses)
    db.session.commit()
    return course_schema.jsonify(courses)




#update route to add specific data by id in the database
@app.route('/update/<id>', methods = ['PUT'])
def update_course(id):
    course = Courses.query.get(id)
    Course_Code = request.json['Course_Code']
    Course_Title = request.json['Course_Title']
    Credit_Hours = request.json['Credit_Hours']
    Semester = request.json['Semester']
    Course_Type = request.json['Course_Type']

    course.Course_Code = Course_Code
    course.Course_Title = Course_Title
    course.Credit_Hours = Credit_Hours
    course.Semester = Semester
    course.Course_Type = Course_Type

    db.session.commit()
    return course_schema.jsonify(course)




#delete route to delete specific data by id in the database
@app.route('/delete/<id>', methods = ['DELETE'])
def delete_course(id):
    course = Courses.query.get(id)
    db.session.delete(course)
    db.session.commit()

    return course_schema.jsonify(course)






if __name__ == "__main__":
    app.run(debug=True)