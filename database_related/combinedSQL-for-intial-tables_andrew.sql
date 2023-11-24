--This is the collated SQL scripts that were used to set up the intial three tables, as per Table Design. 111121

--SCHEMA on db2: XMP34733

DROP TABLE users; -- this will throw an error if the table doesn't exist but just ignore the error
CREATE TABLE users (
user_id INT GENERATED BY DEFAULT AS IDENTITY (START WITH 1 INCREMENT BY 1),
password_hash VARBINARY(16) NOT NULL, -- this may change
first_name NVARCHAR(32),
last_name NVARCHAR(32),
PRIMARY KEY (user_id)
);

DROP TABLE habits;
CREATE TABLE habits (
habit_id INT GENERATED BY DEFAULT AS IDENTITY (START WITH 1 INCREMENT BY 1),
date_time DATETIME NOT NULL,
user_id INT NOT NULL,
habit_type INT NOT NULL,
description NVARCHAR(256) NOT NULL,
frequency INT NOT NULL,
PRIMARY KEY (habit_id),
FOREIGN KEY (user_id) REFERENCES users(user_id)
);

DROP TABLE successes;
CREATE TABLE successes (
habit_id INT NOT NULL,
date_time DATETIME NOT NULL,
description NVARCHAR(300),
FOREIGN KEY (habit_id) REFERENCES habits(habit_id)
);