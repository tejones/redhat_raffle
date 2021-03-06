DROP TABLE IF EXISTS attendee CASCADE;
DROP TABLE IF EXISTS event CASCADE;

CREATE TABLE attendee (
        id CHARACTER VARYING(256) NOT NULL,
	first_name CHARACTER VARYING(256) NOT NULL,
	last_name CHARACTER VARYING(256) NOT NULL,
	scanned_value CHARACTER VARYING(256) NOT NULL,
        created_at TIMESTAMP,
        updated_at TIMESTAMP,
	PRIMARY KEY ( id )
);

CREATE TABLE event (
	id INTEGER NOT NULL,
	event_name CHARACTER VARYING(256) NOT NULL,
	event_city CHARACTER VARYING(256) NOT NULL,
	event_country CHARACTER(256) NOT NULL,
	PRIMARY KEY ( id )
);

GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO postgresql;
ALTER TABLE attendee OWNER TO postgresql;




