-- SALES PERSON --

CREATE TABLE sales_person( 
	sales_person_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50)

);

-- CUSTOMER --

CREATE TABLE customer( 
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50)

);


ALTER TABLE customer 
ADD COLUMN email VARCHAR (50) UNIQUE 

-- CAR --
-- FOREIGN KEYS (SALES PERSON, CUSTOMER) --

CREATE TABLE car( 
	car_id SERIAL PRIMARY KEY,
	total NUMERIC(6,2),
	vin_number NUMERIC (8) UNIQUE,
	sales_person_id INTEGER NOT NULL,
	FOREIGN KEY(sales_person_id) REFERENCES sales_person(sales_person_id),
	customer_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customer (customer_id)
	
);

ALTER TABLE car 
--ADD COLUMN model VARCHAR (50),
--ADD COLUMN make VARCHAR (50),
ADD COLUMN year_ NUMERIC (6,2),
ADD COLUMN vin_number NUMERIC (8,0) UNIQUE;
 
ALTER TABLE car 
DROP COLUMN year_ ;

ALTER TABLE car 
DROP COLUMN vin_number;

SELECT *
FROM car c 


-- SALES INVOICE --

CREATE TABLE sales_invoice( 
	sales_invoice_id SERIAL PRIMARY KEY,
	total NUMERIC(6,2),
	sales_person_id INTEGER NOT NULL,
	FOREIGN KEY(sales_person_id) REFERENCES sales_person(sales_person_id),
	customer_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customer (customer_id),
	car_id INTEGER NOT NULL,
	FOREIGN KEY(car_id) REFERENCES car(car_id)
		
);




--  MECHANIC --

CREATE TABLE mechanic( 
	mechanic_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50)

);

-- SERVICE INVOICE  --

CREATE TABLE service_invoice( 
	service_invoice_id SERIAL PRIMARY KEY,
	total NUMERIC(6,2),
	customer_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customer (customer_id),
	car_id INTEGER NOT NULL,
	FOREIGN KEY(car_id) REFERENCES car(car_id),
	mechanic_id INTEGER NOT NULL,
	FOREIGN KEY(mechanic_id) REFERENCES mechanic(mechanic_id)
		
);


-- DEALERSHIP HISTORY --

CREATE TABLE dealership_history( 
	dealership_history_id SERIAL PRIMARY KEY,
	sales_invoice_id  INTEGER NOT NULL,
	FOREIGN KEY(sales_invoice_id) REFERENCES sales_invoice(sales_invoice_id),
	car_id INTEGER NOT NULL,
	FOREIGN KEY(car_id) REFERENCES car(car_id),
	service_invoice_id  INTEGER NOT NULL,
	FOREIGN KEY(service_invoice_id) REFERENCES service_invoice (service_invoice_id)


);

