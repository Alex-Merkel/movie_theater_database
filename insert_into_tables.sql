insert into customer(
	customer_id,
	first_name,
	last_name,
	address,
	phone_number,
	billing_info
) values (
	1,
	'Ted',
	'Brown',
	'123 Main St Mainville, ME, 11111',
	'555-555-5555',
	'5555-5555-5555-5555 555 5/25'
);

insert into movies (
	movie_id,
	movie_name,
	movie_runtime,
	movie_rating,
	theater_id 
) values (
	1,
	'Avatar 2',
	'3h 12m',
	'PG-13',
	1
);

insert into concessions (
	item_id,
	amount,
	quantity,
	customer_id
) values (
	1,
	4.99,
	1,
	1
);

insert into tickets (
	ticket_id,
	amount,
	movie_id,
	customer_id 
) values (
	1,
	9.99,
	1,
	1
);

update concessions
set item_name = 'Popcorn'
where customer_id = 1;