--This is the collated SQL scripts that were used to set up the intial three tables, as per Table Design. 111121

--SCHEMA on db2: XMP34733

-- Drop old tables Habits, Users, Successes

DROP TABLE Users;
DROP TABLE Habits;
DROP TABLE Successes;

CREATE TABLE Users (
user_id INT NOT NULL GENERATED ALWAYS AS IDENTITY
(START WITH 1 INCREMENT BY 1),
password_hash VARBINARY(16) NOT NULL,
first_name NVARCHAR(32),
last_name NVARCHAR(32),
PRIMARY KEY (User_ID)
);

CREATE TABLE Habits (
habit_id INT NOT NULL GENERATED ALWAYS AS IDENTITY
(START WITH 1 INCREMENT BY 1),
day_time DATETIME NOT NULL,
user_id INT NOT NULL,
habit_type INT NOT NULL,
description NVARCHAR(256) NOT NULL,
frequency INT NOT NULL,
PRIMARY KEY (Habit_ID),
FOREIGN KEY (User_ID ) REFERENCES Users(User_ID)
);

CREATE TABLE Successes (
habit_id INT NOT NULL GENERATED ALWAYS AS IDENTITY
(START WITH 1 INCREMENT BY 1),
day_time DATETIME NOT NULL,
description_success NVARCHAR(300),
FOREIGN KEY (Habit_ID) REFERENCES Habits(Habit_ID)
);
