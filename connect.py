# step 1 Create connection
import mysql.connector as myConn

mydb=myConn.connect(host='localhost',user='root',password="hammad@12")
print(mydb,'Connection Establised...')

# step 2 Create Database
db_cursor=mydb.curor() #sql ka operation perform cursor method ky through
db_cursor.execute('')#execute ky through actual query perform krskty hain

# jub hum frontend sy kuch bi changes pass karin gyein apny database mein
# to yeah direct database mein nai jaye ga humy pahly usy language ky pass bhejna pary ga
# to vo kuch code hoga ,subsy pahly data ksi code ko refelect kry ga
# code hamara isi language mein likha hoga,reflect krny ky baad vo 
# code database ko hit kry ga aur hamara jo bi data hoga vo database ja kr store hoga by using this language
