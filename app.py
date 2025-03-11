from flask import Flask, render_template
import pymysql
app = Flask(__name__)

def getConnection():
    return pymysql.connect(
        host='localhost',
        db='seito_db',
        user='kawano',
        password='Kshin1122',
        charset='utf8',
        cursorclass=pymysql.cursors.DictCursor
    )

@app.route('/')
def list_players():

    connection = getConnection()
    message = "生徒一覧"

    cursor = connection.cursor()
    sql = "SELECT * FROM students LEFT JOIN schools ON students.school_id = schools.school_id"
    cursor.execute(sql)
    students = cursor.fetchall()

    cursor.close()
    connection.close()

    return render_template('index.html', message = message, students = students)
    
@app.route('/show/<int:id>')
def show_player(id):

    connection = getConnection()
    message = "生徒詳細： " + str(id)

    cursor = connection.cursor()
    sql = "SELECT * FROM students LEFT JOIN schools ON students.school_id = schools.school_id WHERE students.id = %s"
    cursor.execute(sql, id)
    student = cursor.fetchone()

    cursor.close()
    connection.close()

    return render_template('profile.html', message = message, student = student)

