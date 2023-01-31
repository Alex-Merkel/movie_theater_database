create table customer (
	customer_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	address VARCHAR(150),
	phone_number VARCHAR(15),
	billing_info VARCHAR(150)
);

create table movies (
	movie_id SERIAL primary key,
	movie_name VARCHAR(50),
	movie_runtime VARCHAR(10),
	movie_rating VARCHAR(10),
	theater_id INTEGER
);

create table concessions (
	item_id SERIAL primary key,
	amount NUMERIC(4,2),
	quantity INTEGER,
	customer_id INTEGER not null,
	foreign key(customer_id) references customer(customer_id)
);

create table tickets (
	ticket_id SERIAL primary key,
	amount NUMERIC(4,2),
	movie_id INTEGER not null,
	customer_id INTEGER not null,
	foreign key(movie_id) references movies(movie_id),
	foreign key(customer_id) references customer(customer_id)
);

alter table concessions
add item_name VARCHAR(100);