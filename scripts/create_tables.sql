CREATE TABLE etl_porto1.MasterResto
(
  resto_id INT
, store_address VARCHAR(100)
, latitude DOUBLE
, longitude DOUBLE
, rating_count INT
);

CREATE TABLE etl_porto1.Reviews
(
  reviewer_id BIGINT
, resto_id INT
, review_time VARCHAR(13)
, review TEXT
, rating VARCHAR(7)
);