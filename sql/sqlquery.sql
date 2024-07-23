-- drop tables are list in this logical order to make sure the query runs more than once if for whatever reason we'd like to drop tables.
DROP TABLE IF EXISTS nyc311_service_line;


-- data engineering part of the challenge
-- creating tables 

CREATE TABLE nyc311_service_line (
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
	taxi_company_borough VARCHAR(200)

);

SELECT *
FROM nyc311_service_line
