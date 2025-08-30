import mysql.connector as myConn

mydb=myConn.connect(host='localhost',user='root',password='hammad@12',database='hammadsql')
db_cursor=mydb.cursor() 
# #for creating table
# db_cursor.execute('create table emp(rollno INT,name VARCHAR(20))')
# db_cursor.execute('create table emp2(rollno INT,name VARCHAR(20))')
db_cursor.execute('show tables') #isko as a string consider krna

for i in db_cursor:
    print (i)
print ('Table Created')