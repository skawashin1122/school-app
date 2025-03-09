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
def select_sql():

    connection = getConnection()
    message = "Hello world"

    sql = "SELECT * FROM jobs"
    cursor = connection.cursor()
    cursor.execute(sql)
    results = cursor.fetchall()

    cursor.close()
    connection.close()

    return render_template('view.html', message = message, results = results)

@app.route('/job/<int:id>')
def show_job(id):
    connection = getConnection()
    message = "Hello Job " + str(id)

    cursor = connection.cursor()
    sql = "SELECT * FROM jobs WHERE id = %s"
    cursor.execute(sql, id)
    result = cursor.fetchone()

    cursor.close()
    connection.close()

    return render_template('view_job.html', message = message, result = result)

