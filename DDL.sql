Server [localhost]:
Database [postgres]:
Port [5432]:
Username [postgres]:
Password for user postgres:
psql (15.3)
WARNING: Console code page (437) differs from Windows code page (1252)
         8-bit characters might not work correctly. See psql reference
         page "Notes for Windows users" for details.
Type "help" for help.

postgres=# CREATE DATABASE enigma_laundry;
CREATE DATABASE
postgres=# \c enigma_laundry;
You are now connected to database "enigma_laundry" as user "postgres".
enigma_laundry=# CREATE TABLE customer (id INTEGER PRIMARY KEY, name VARCHAR(100) NOT NULL, address VARCHAR(100), phone_number VARCHAR(20), taken_item INTEGER NOT NULL);
CREATE TABLE
enigma_laundry=# CREATE TABLE laundry_services (id VARCHAR(10) PRIMARY KEY, service_name VARCHAR(100) NOT NULL, price DECIMAL(10, 2) NOT NULL, unit VARCHAR(100) NOT NULL);
CREATE TABLE
enigma_laundry=# CREATE TABLE laundry_transactions (id VARCHAR(10) PRIMARY KEY, transaction_date DATE NOT NULL, customer_id INT REFERENCES customer(id));
CREATE TABLE
enigma_laundry=# CREATE TABLE transaction_details (id INTEGER PRIMARY KEY, customer_id integer REFERENCES customer(id), laundry_services_id VARCHAR(100) REFERENCES laundry_services(id), item INTEGER NOT NULL);
CREATE TABLE
enigma_laundry=#