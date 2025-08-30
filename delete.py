import mysql.connector as myConn

# Establish database connection
mydb = myConn.connect(
host='localhost',
user='root', 
password='hammad@12', 
database='hammadsql'
)
db_cursor=mydb.cursor()
db_deletedate='delete from hammadsql.emp where name=%s'
# for deleting all database record
# db_deletedate='trunucate table hammadsql.emp'
# db_cursor.execute(db_deletedate)
db_value=('Ali', )
db_cursor.execute(db_deletedate,db_value)
mydb.commit()

print(db_cursor.rowcount,'Record DELETE')