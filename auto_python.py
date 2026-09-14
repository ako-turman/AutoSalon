import mysql.connector

conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="",
    database="autosalon"
)

cursor = conn.cursor()

cursor.execute("DELETE FROM cars WHERE brand = 'Honda'")
conn.commit()

print("Data deleted")

conn.close()
