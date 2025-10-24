
-- Triggers, are the procedures that are invoked whenever a specific event occurs for which triggers are set. Trigger is fired.

-- Insert data from employee table to backup_employee whenever data is deleted from the main employee table.

-- SELECT * FROM employee;

/*CREATE TABLE backup_employee(id SERIAL PRIMARY KEY,
							 name VARCHAR(30),
							 age INTEGER,
							 dept VARCHAR(30),
							 experience FLOAT,
							 location TEXT,
							 salary INTEGER
								);*/

-- creating trigger function, trigger functions return triggers.

/*CREATE FUNCTION employee_backup_trigger_function()
RETURNS TRIGGER
LANGUAGE 'plpgsql'
AS $$
DECLARE
BEGIN
	INSERT INTO backup_employee(id, name, age, dept, experience, location, salary)
	VALUES (old.id, old.name, old.age, old.dept,old.experience, old.location, old.salary);
RETURN OLD;
END;
$$;*/

-- creating trigger

/*CREATE TRIGGER delete_trigger
BEFORE DELETE ON employee
FOR EACH ROW
EXECUTE PROCEDURE employee_backup_trigger_function(); */

/*
DELETE FROM employee 
WHERE id = 10; */

-- SELECT * FROM backup_employee;

-- Another trigger, data validation

/*
CREATE FUNCTION validate_salary()
RETURNS TRIGGER
LANGUAGE 'plpgsql'
AS $$
DECLARE
BEGIN 
	IF NEW.salary < 0 THEN
    RAISE EXCEPTION 'Salary cannot be negative';
  	END IF;
RETURN NEW;
END
$$;*/

/*
CREATE TRIGGER salary_validation
AFTER INSERT OR UPDATE ON employee
FOR EACH ROW
EXECUTE PROCEDURE validate_salary(); */

/*INSERT INTO employee(name,age,dept,experience,location,salary)
VALUES('Ali Hassan', 20, 'IT', 2.5, 'Lahore', -100);*/

--Audit logging trigger, whenever new record is added in table it will first log

/*CREATE TABLE log_employee(id SERIAL PRIMARY KEY,
						 name VARCHAR(30),
						 age INTEGER,
						 dept VARCHAR(30),
						 experience FLOAT,
						 location TEXT,
						 salary INTEGER
						 ); */

/*CREATE FUNCTION log_employee()
RETURNS TRIGGER
LANGUAGE 'plpgsql'
AS $$
DECLARE
BEGIN
	INSERT INTO log_employee(id,name,age,dept,experience,location,salary)
	VALUES (NEW.id,NEW.name,NEW.age,NEW.dept, NEW.experience, NEW.location, NEW.salary);
RETURN NEW;
END;
$$;*/


/*
CREATE TRIGGER logging_employee
AFTER INSERT OR UPDATE ON
employee 
FOR EACH ROW
EXECUTE PROCEDURE log_employee(); */

/*INSERT INTO employee(name,age,dept,experience,location,salary)
VALUES('Hassan Khan',20,'SE',6,'Islamabad',10000);*/

-- SELECT * FROM log_employee;




