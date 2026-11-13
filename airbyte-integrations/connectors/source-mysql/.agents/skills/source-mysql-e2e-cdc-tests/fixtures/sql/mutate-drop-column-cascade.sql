USE cdc_test;
-- Debezium < 3.6 fails to parse DROP COLUMN ... CASCADE from the binlog.
ALTER TABLE users ADD COLUMN scratch INT NULL;
ALTER TABLE users DROP COLUMN scratch CASCADE;
INSERT INTO users (email) VALUES ('dave@example.com');
