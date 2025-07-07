# ORACLEDB-EX-04 — Insert 100 Records into BOOK Table via Java

## Objective

In this assignment, a simple Java application was created to connect to the existing `BOOK` table and insert 100 randomly generated records. Both `NAME` and `ISBN` fields were populated with random values using Java.

---

## Tools Used

- Oracle XE (Docker container on GCP)
- Oracle SQL Developer
- Java (JDK 17)
- Oracle JDBC Driver (`ojdbc17.jar`)
- Google Cloud Firewall (Port 1521 enabled)

---

## Task Details

The application `BookInsert.java` was executed from terminal using Oracle JDBC to connect to the remote database instance. It successfully inserted 100 records into the `BOOK` table using random strings.

---

## Screenshots

### 1. Java application successfully executed  
![Java Insert Success](./01_java_book_insert_success.png)

### 2. Inserted records verified via SQL Developer  
![SQL Developer Records](./02_sql_developer_book_records.png)

---

## Result

- Successfully connected to Oracle XE hosted on Google Cloud using JDBC  
- Java application inserted 100 records into `BOOK` table  
- Records were verified through SQL Developer interface
