SELECT * FROM customer;
SELECT * FROM laundry_services;
SELECT * FROM laundry_transactions;
SELECT * FROM transaction_details;

INSERT INTO customer (id, name, address, phone_number)
VALUES
	('1', 'Gerryl', 'jl.Nusa', 08512312111),
	('2', 'Nida', 'jl.cipete', 08527773133),
	('3', 'Reno', 'jl.baru', 08512312232),
	('4', 'Dimas', 'jl.lama', 08512312123);

INSERT INTO laundry_services (id, service_Name, Price)
VALUES
	('S01', 'Cuci + Setrika', 7000.00),
	('S02', 'Laundry Bedcover', 50000.00),
	('S03', 'Laundry Boneka', 25000.00);

INSERT INTO laundry_transactions (id, transaction_date, customer_id)
VALUES
    ('LT01', '2023-07-26', '1'),
    ('LT02', '2023-07-29', '2'),
    ('LT03', '2023-08-08', '3');

INSERT INTO transaction_details (id, laundry_transactions_id, laundry_services_id, quantity)
VALUES
    ('TD01', 'LT01', 'S01', '5'),
    ('TD02', 'LT02', 'S02', '1'),
    ('TD03', 'LT03', 'S03', '2');
