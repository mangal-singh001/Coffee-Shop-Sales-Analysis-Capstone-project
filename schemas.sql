CREATE TABLE coffee_sales(
	transaction_id	INT PRIMARY KEY,
	transaction_date	DATE,
	transaction_time	TIME,
	transaction_qty	INT,
	store_id	INT,
	store_location	TEXT,
	product_id	INT,
	unit_price	DOUBLE PRECISION,
	product_category	TEXT,
	product_type	TEXT,
	product_detail TEXT
)