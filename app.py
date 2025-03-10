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
    message = "Player一覧"

    cursor = connection.cursor()
    sql = "SELECT * FROM players LEFT JOIN jobs ON jobs.id = players.job_id"
    cursor.execute(sql)
    players = cursor.fetchall()

    cursor.close()
    connection.close()

    return render_template('index.html', message = message, players = players)
    
@app.route('/show/<int:id>')
def show_player(id):

    connection = getConnection()
    message = "Hello Player " + str(id)

    cursor = connection.cursor()
    sql = "SELECT * FROM players LEFT JOIN jobs ON jobs.id = players.job_id WHERE players.id = %s"
    cursor.execute(sql, id)
    player = cursor.fetchone()

    cursor.close()
    connection.close()

    return render_template('profile.html', message = message, player = player)

