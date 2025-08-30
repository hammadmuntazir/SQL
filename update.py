import mysql.connector as myConn


    # Establish database connection
mydb = myConn.connect(
        host='localhost',
        user='root', 
        password='hammad@12', 
        database='hammadsql'
    )
    
    
db_cursor = mydb.cursor()
        
        # Update query
db_updatedata = 'UPDATE emp SET rollno = %s WHERE name = %s'
db_value = (20, 'hammad')
        
        # Execute the update
db_cursor.execute(db_updatedata, db_value)
        
        # Commit the changes to make them permanent
mydb.commit()
print(db_cursor.rowcount,'data updated')