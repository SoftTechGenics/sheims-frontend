from flask import Flask, render_template

app = Flask(__name__)
app.secret_key = 'many-secret-key'

@app.route('/')
def index():
    return "<h1>This is my Default rout<h1>"
    #return render_template('first-program.html')
@app.route('/load-html')
def loadhtml():
    #return "<h1>This is my Default rout<h1>"
    return render_template('myhtml.html')


if __name__ == "__main__":
    app.run(debug=True)