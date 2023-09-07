CREATE TABLE IF NOT EXISTS dimDate (
	date_id int NOT NULL,
	full_date date,
	year smallint,
	quarter tinyint,
	quarter_name char(2),
	month tinyint,
	month_name varchar(12),
	day tinyint,
	day_of_week varchar(9),
	day_of_year smallint,
	PRIMARY KEY(date_id)
	);

CREATE TABLE IF NOT EXISTS dimState (
	state_id tinyint NOT NULL,
	state varchar(13),
	fips int,
	base2020 int,
	PRIMARY KEY(state_id)
	);

CREATE TABLE IF NOT EXISTS dimCounty (
	county_id smallint NOT NULL,
	county varchar(35),
	state_id tinyint,
	state varchar(14),
	fips int,
	base2020 int,
	PRIMARY KEY(county_id)
	);

CREATE TABLE IF NOT EXISTS factCases (
	case_id int NOT NULL,
	date_id int,
	state_id tinyint, 
	county_id smallint, 
	cases int,
	deaths int,
	PRIMARY KEY(case_id),
    FOREIGN KEY(date_id )REFERENCES dimDate(date_id),
     FOREIGN KEY(state_id)REFERENCES dimState(state_id),
     FOREIGN KEY(county_id) REFERENCES dimCounty(county_id)
	);
