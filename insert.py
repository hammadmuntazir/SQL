import mysql.connector as myConn

mydb=myConn.connect(host='localhost',user='root',password='hammad@12',database='hammadsql')
db_cursor=mydb.cursor() 
# for one by one
# db_cursor.execute('insert into emp(rollno,name) values(%s,%s)',(10,'Ali'))
db_insert='insert into emp(rollno,name) values(%s,%s)'
db_list=[(10,'Ali'),(20,'Hammad'),(30,'Ahmad')]
db_cursor.executemany(db_insert,db_list)
mydb.commit()
print(db_cursor.rowcount,'Record inserted')
