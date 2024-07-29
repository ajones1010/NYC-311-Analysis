-- drop tables are list in this logical order to make sure the query runs more than once if for whatever reason we'd like to drop tables.
DROP TABLE IF EXISTS nyc311_merged_tb;
DROP TABLE IF EXISTS boroughs_tb;
DROP TABLE IF EXISTS complaints_tb;
DROP TABLE IF EXISTS agencies_tb;



-- data engineering part of the challenge
-- creating tables 

CREATE TABLE complaints_tb (
	complaint_id varchar(10) PRIMARY KEY NOT NULL,
	complaint_type varchar(200) NOT NULL
);

CREATE TABLE boroughs_tb (
	borough_id varchar(10) PRIMARY KEY NOT NULL,
	borough varchar(200) NOT NULL
);

CREATE TABLE agencies_tb (
	agencies_id varchar(10) PRIMARY KEY NOT NULL,
	agency varchar(20) NOT NULL
);

CREATE TABLE nyc311_merged_tb (
	unique_key INTEGER PRIMARY KEY NOT NULL,
	created_date timestamp,
	closed_date timestamp,
	agency VARCHAR(30),
	complaint_type VARCHAR(200),
	complaint_descriptor VARCHAR,
	location_type VARCHAR(200),
	location_subtype VARCHAR(200),
	incident_zip INTEGER,
	incident_address VARCHAR(200),
	street_name VARCHAR(200),
	cross_street_1 VARCHAR(200),
	cross_street_2 VARCHAR(200),
	intersection_street_1 VARCHAR(200),
	intersection_street_2 VARCHAR(200),
	address_type VARCHAR(200),
	city VARCHAR(200),
	landmark VARCHAR(200),
	status VARCHAR(200),
	resolution_description VARCHAR,
	resolution_action_updated_date timestamp,
	community_board VARCHAR(200),
	bbl VARCHAR(200),
	borough VARCHAR(200),
	x_coordinate_state_plane INTEGER,
	y_coordinate_state_plane INTEGER,
	open_data_channel_type VARCHAR(200),
	park_facility_name VARCHAR(200),
	park_borough VARCHAR(200),
	latitude FLOAT,
	longitude FLOAT,
	vehicle_type VARCHAR(200),
	facility_type VARCHAR(200),
	due_date timestamp,
	taxi_pick_up_location VARCHAR(200),
	bridge_highway_name VARCHAR(200),
	bridge_highway_segment VARCHAR(200),
	bridge_highway_direction VARCHAR(200),
	road_ramp VARCHAR(200),
	taxi_company_borough VARCHAR(200),
	complaint_id varchar(10) NOT NULL,
	borough_id varchar(10) NOT NULL,
	agencies_id varchar(10) NOT NULL,
	FOREIGN KEY (complaint_id) REFERENCES complaints_tb (complaint_id),
	FOREIGN KEY (borough_id) REFERENCES boroughs_tb  (borough_id),
	FOREIGN KEY (agencies_id) REFERENCES agencies_tb (agencies_id)

);


SELECT *
FROM complaints_tb;


SELECT *
FROM boroughs_tb;


SELECT *
FROM agencies_tb;


SELECT *
FROM nyc311_merged_tb;
