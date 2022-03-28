-- CUSTOMER

SELECT *
FROM customer c 


INSERT INTO customer(
	first_name,
	last_name,
	email
) VALUES (
	'Sheldon',
	'Powell',
	'Sheldonjpowell@yahoo.com'
)

INSERT INTO customer(
	first_name,
	last_name,
	email
) VALUES ( 
	'Jordan',
	'Maxwell',
	'jmax@surr.com'
),(
	'Kevin',
	'Brahmee',
	'kbmee@email.com'
	),(
	'Kathy',
	'Wrice',
	'kwice@gmail.com'
	)

	
-- SALES PERSON	
	
SELECT *
FROM sales_person sp 	
	
INSERT INTO sales_person( 

	first_name,
	last_name 
) VALUES ( 
	'Tate',
	'Longbottom'
),( 
	'Mike',
	'Longerbottom'
),( 
	'Dirk',
	'Willard'
),(
	'Brock',
	'Catchem'
)


-- MECHANIC 

SELECT *
FROM mechanic m 

INSERT INTO mechanic( 

	first_name,
	last_name 
) VALUES (
	'Markey',
	'Mark Jr.'
),(
	'Tilly',
	'Pumpernickle'
),( 
	'Pete',
	'Davidson'
),(
	'Bert',
	'Bacon'
)


-- CAR

SELECT *
FROM car c 

INSERT INTO car(
	total,
	sales_person_id,
	customer_id, 
	model,
	make,
	year_
)VALUES (
	2000,
	1,
	1,
	'Accord',
	'Honda',
	2000
);


INSERT INTO car(
	total,
	sales_person_id,
	customer_id, 
	model,
	make,
	year_
) VALUES (
	6000,
	2,
	2,
	'Tahoe',
	'Chevy',
	2022
),(
	2100,
	3,
	4,
	'Cruze',
	'Chevy',
	2020
),(
	5300,
	4,
	3,
	'Tacoma',
	'Toyota',
	2022
);



-- SALES INVOICE 

SELECT *
FROM service_invoice si 

INSERT  INTO sales_invoice ( 
	total,
	sales_person_id,
	customer_id,
	car_id 
) VALUES (
	12,000,
	1,
	2
)


-- SERVICE INVOICE

SELECT *
FROM service_invoice si 


INSERT INTO service_invoice(
	total,
	customer_id,
	car_id,
	mechanic_id 
	
) VALUES(
	200.00,
	1,
	1,
	1
)


