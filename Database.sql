//Drop existing Tables
drop table user;
drop table trainer;
drop table tranierPhone;
drop table goal;
drop table log;
drop table exerise;
drop table workout;
drop table reach;

//Create Tables
CREATE TABLE Goal(
goalID int PRIMARY KEY,
goal varChar(100),
startDate DATE,
endDate DATE);

CREATE TABLE Log(
logNumber int PRIMARY KEY,
logDay DATE,
Carloies INT,
startTime TIME,
endTime TIME);

CREATE TABLE Exercise(
exceriseName varChar(50),
equipment varChar(50),
repWeight int,
type varChar(50));

CREATE TABLE Trainer (
trainerID INT PRIMARY KEY, 
fName varChar(25), 
age INT,
gender varchar(1), 
email varchar(100), 
rating INT);

CREATE TABLE User(
username varchar(25) PRIMARY KEY, 
email varchar(100), 
weight INT, 
fName varchar(50), 
gender varchar(1), 
trainerID INT, 
logNumber varchar(3),
FOREIGN KEY (trainerID) REFERENCES Trainer (trainerID),
FOREIGN KEY (logNumber) REFERENCES Log (logNumber));

CREATE TABLE TrainerPhone(
trainerID INT PRIMARY KEY,
Phone INT PRIMARY KEY,
FOREIGN KEY (trainerID) REFERENCES Trainer (trainerID) ON DELETE CASCADE);

CREATE TABLE Workout(
username varchar(50),
exceriseName varchar(50),
FOREIGN KEY (username) REFERENCES user (username) ON DELETE CASCADE,
FOREIGN KEY (exceriseName) REFERENCES Excerise (exceriseName) ON DELETE CASCADE);

CREATE TABLE Reach(
completed varchar(1),
username varchar(50),
goal varchar(100),
FOREIGN KEY (username) REFERENCES user (userName) ON DELETE CASCADE,
FOREIGN KEY (goal) REFERENCES goal (goal) ON DELETE CASCADE);
