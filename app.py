from flask import Flask, render_template, request, redirect
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql://linuss:6548@10.200.3.16:3306/PCdatabaseflask'
app.config['SQLALCHEMY_TRAACK_MODIFICATIONS'] = False
db = SQLAlchemy(app)


class users(db.Model):
    id = db.Column(db.integer, primarykey=True)
    #setter fast id på hver kolonne med username password osv.
    username = db.Column(db.string(100) uniqe=True, nullable=False)
    password = db.Column(db.string(100) nullable=False)
    
@app.route("/", methods=["GET", "POST"])
def index():
    if request.method == "POST":
        username = request.form.get("username") 
        password = request.form.get("password")
        gmail = request.form.get("gmail")

    


    with app.app_context():
        db.create_all()
        print("du har tilkobling nå")

if __name__ == "__main__":
    app.run(debug=True)