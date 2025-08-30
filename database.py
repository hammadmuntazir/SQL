import mysql.connector as myConn
mydb=myConn.connect(host='localhost',user='root',password='hammad@12')
db_cursor=mydb.cursor() #sql ka operation perform cursor method ky through
db_cursor.execute('create database HammadSQL')#execute ky through actual query perform krskty hain

print('Database Created');