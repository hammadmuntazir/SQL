import mysql.connector as myConn

mydb=myConn.connect(host='localhost',user='root',password='hammad@12',database='hammadsql')
db_cursor=mydb.cursor()

db_cursor.execute('select * from hammadsql.emp')
# db_select=db_cursor.fetchall()
for db_data in db_cursor.fetchall():
    print(db_data)
# print(db_select)