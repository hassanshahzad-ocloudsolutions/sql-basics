
-- Transaction, atomic/ logical unit of work.

/*CREATE TABLE accounts(
			acc_no SERIAL PRIMARY KEY,
			name VARCHAR(20),
			balance NUMERIC (10,2)
);*/

-- select * from accounts;

/*
INSERT INTO accounts(acc_no, name, balance) 
			VALUES (1, 'Hassan',1000000.00),
			(2,'Ali',200000); */

--Without transaction updating accounts is not safe, SO WE WILL DO THIS USING TRANSACTION

--Transfering 10000 from Hassan to Ali

/*BEGIN TRANSACTION;
	UPDATE accounts SET balance = balance-10000.00 WHERE name = 'Hassan';
	UPDATE accounts SET balance = balance+10000.00 WHERE name = 'Ali';

	--Verify first then commit else roll back
	SELECT * FROM accounts;

COMMIT;*/

-- SELECT * FROM accounts;

/*
BEGIN TRANSACTION;
	UPDATE employee SET age = 30 where name = 'Ali Khan';
COMMIT TRANSACTION; */

-- SELECT * FROM employee where name = 'Ali Khan';

-- INSERT INTO accounts(acc_no, name, balance) VALUES(3,'Sara',900000.00);


-- Multiple transactions running serially to understand isolation

/*T1: Transfers money from Hassan → Sara

T2: Deducts a service charge from all accounts

T3: Reads all balances for reporting*/

-- T1 

/*
SELECT * FROM accounts;

BEGIN TRANSACTION;
	UPDATE accounts SET balance = balance - 1000 WHERE name = 'Hassan';
	UPDATE accounts SET balance = balance + 1000 WHERE name = 'Sara';
COMMIT;

SELECT * FROM accounts;

BEGIN TRANSACTION;
	UPDATE accounts SET balance = balance - 1000 WHERE name IN ('Hassan', 'Ali', 'Sara');
COMMIT;

SELECT * FROM accounts;

BEGIN TRANSACTION;
	SELECT acc_no, balance FROM accounts;
COMMIT; */





	
