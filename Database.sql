--Create Database
/*
    Create Sequences
*/

//trainer sequence
CREATE Sequence trainerIDSeq
START WITH 1
INCREMENT BY 1
MAXVALUE 100;

//goal sequence
CREATE Sequence goalIDSeq
START WITH 1
INCREMENT BY 1
MAXVALUE 100;

CREATE Sequence logNumberSeq
START WITH 1
INCREMENT BY 1
MAXVALUE 1000;

/*
    Create Tables
*/

//Goal table
CREATE TABLE Goal(
goalID int PRIMARY KEY,
goal varChar(100),
startDate DATE,
endDate DATE);

//exercise table
CREATE TABLE Exercise(
exerciseName varChar(50) PRIMARY KEY,
equipment varChar(50),
exceriseType varChar(50));

//trainer table
CREATE TABLE Trainer (
trainerID INT PRIMARY KEY, 
fName varChar(25), 
age INT,
gender varchar(1), 
email varchar(100), 
rating INT);

//user table
CREATE TABLE UserTable(
username varchar(25) PRIMARY KEY, 
email varchar(100), 
weight INT, 
fName varchar(50), 
gender varchar(1), 
trainerID INT, 
FOREIGN KEY (trainerID) REFERENCES Trainer (trainerID));

//since each trainer has more than 1 phone number, we need an extra table
CREATE TABLE TrainerPhone(
trainerID INT,
Phone INT,
PRIMARY KEY (trainerID, Phone),
FOREIGN KEY (trainerID) REFERENCES Trainer (trainerID) ON DELETE CASCADE);

//log table
CREATE TABLE LogTable(
logNumber int PRIMARY KEY,
Carloies INT,
startTime TIMESTAMP,
endTime TIMESTAMP,
username varchar(25),
FOREIGN KEY (username) REFERENCES UserTable (username) ON DELETE CASCADE);

Alter TABLE logTable
ADD CONSTRAINT checkTimes CHECK (endTime > startTime);


//connects a user with an excerise
CREATE TABLE Workout(
username varchar(25),
repWeight int,
exerciseName varchar(50),
FOREIGN KEY (username) REFERENCES UserTable (username) ON DELETE CASCADE,
FOREIGN KEY (exerciseName) REFERENCES Exercise (exerciseName) ON DELETE CASCADE);

//checks to see if a user completed their goals
CREATE TABLE Reach(
completed varchar(1),
username varchar(50),
goalID INT,
FOREIGN KEY (username) REFERENCES userTable (userName) ON DELETE CASCADE,
FOREIGN KEY (goalID) REFERENCES goal (goalID) ON DELETE CASCADE);

/*
    create trigers
*/

//sets the trainer id for eeach trainer
CREATE TRIGGER setTrainerID
BEFORE INSERT ON TRAINER
FOR EACH ROW
BEGIN
    IF :NEW.trainerID IS NULL THEN
        :NEW.trainerID := trainerIDSeq.NEXTVAL;
    End IF;
END;
/

//sets each goalID
CREATE TRIGGER setGoalID
BEFORE INSERT ON GOAL
FOR EACH ROW
BEGIN
    IF :NEW.goalID IS NULL THEN
        :NEW.goalID := goalIDSeq.NEXTVAL;
    End IF;
END;
/

//sets the logID for each log
CREATE TRIGGER setlogNumber
BEFORE INSERT ON LogTable
FOR EACH ROW
BEGIN
    IF :NEW.logNumber IS NULL THEN
        :NEW.logNumber := logNumberSeq.NEXTVAL;
    End IF;
END;
/

//makes sure each user has a trainer
CREATE TRIGGER EnsureUserHasTrainer
BEFORE INSERT ON userTable
FOR EACH ROW
BEGIN
    IF :NEW.trainerID IS NULL THEN
        RAISE_APPLICATION_ERROR(-20001, 'You must have a trainer');
    END IF;
END;
/

/*
    Create View
*/

//View for trainer to access the name, email and rating
CREATE VIEW trainerInfo AS
SELECT 
fname,
email,
rating
FROM trainer;

/*
    Create Indexs
*/

//Create index for the user table on email
CREATE INDEX userEmailIndex ON userTable(email);

//Create index for the trainer table on email
CREATE INDEX trainerEmailIndex ON Trainer(email);