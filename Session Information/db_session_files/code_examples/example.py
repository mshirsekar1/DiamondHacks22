import mysql.connector

# Connect to server
cnx = mysql.connector.connect(
    host="127.0.0.1", port=3306, database='db_workshop',
    user="root", password="super_s3cret")

# Get a cursor
cur = cnx.cursor()

# Execute a query
cur.execute("SELECT * FROM customer")

# Fetch one result
row = cur.fetchone()
print("Customer's first name is: {0}".format(row[1]))

# Close connection
cnx.close()

