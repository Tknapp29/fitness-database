/*
    Sample data for database
*/

//Trainers
INSERT INTO Trainer (fname, age,gender, email,rating) VALUES
('Alice',42,'F', 'aanderson@letsgetfit.com', 5);

INSERT INTO Trainer (fname, age,gender, email,rating) VALUES
('Brain',39,'M', 'bbennett@letsgetfit.com', 4);

INSERT INTO Trainer (fname, age,gender, email,rating) VALUES
('Clara',40,'F', 'ccenter@letsgetfit.com', 1);

INSERT INTO Trainer (fname, age,gender, email,rating) VALUES
('Daniel',41,'M', 'ddiaz@letsgetfit.com', 5);

INSERT INTO Trainer (fname, age,gender, email,rating) VALUES
('Emma',41,'F', 'eevans@letsgetfit.com', 5);

INSERT INTO Trainer (fname, age,gender, email,rating) VALUES
('Felix',38,'M', 'ffoster@letsgetfit.com', 1);

INSERT INTO Trainer (fname, age,gender, email,rating) VALUES
('Grace',30,'F', 'ggreen@letsgetfit.com', 4);

INSERT INTO Trainer (fname, age,gender, email,rating) VALUES
('Hannah',56,'F', 'hharris@letsgetfit.com', 5);

INSERT INTO Trainer (fname, age,gender, email,rating) VALUES
('Isaac',31,'M', 'iingram@letsgetfit.com', 2);

INSERT INTO Trainer (fname, age,gender, email,rating) VALUES
('Julia',21,'F', 'jjohnson@letsgetfit.com', 2);

//trainer phone numbers
INSERT into TrainerPhone VALUES
(1, '(123)-(456)-(7890)');

INSERT into TrainerPhone VALUES
(1, '(123)-(654)-(9872)');

INSERT into TrainerPhone VALUES
(2, '(123)-(789)-(4565)');

INSERT into TrainerPhone VALUES
(3, '(123)-(963)-(8528)');

INSERT into TrainerPhone VALUES
(4, '(123)-(753)-(3570)');

INSERT into TrainerPhone VALUES
(4, '(123)-(753)-(2159)');

INSERT into TrainerPhone VALUES
(5, '(321)-(852)-(0025)');

INSERT into TrainerPhone VALUES
(6, '(321)-(828)-(6969)');

INSERT into TrainerPhone VALUES
(7, '(321)-(420)-(5555)');

INSERT into TrainerPhone VALUES
(7, '(123)-(000)-(0001)');

INSERT into TrainerPhone VALUES
(8, '(321)-(888)-(7890)');

INSERT into TrainerPhone VALUES
(9, '(321)-(234)-(5678)');

INSERT into TrainerPhone VALUES
(10, '(321)-(999)-(4200)');

//users
INSERT INTO userTable VALUES
('kking', 'kking@email.com', 150, 'Kevin', 'M', 2);

INSERT INTO userTable VALUES
('llewis', 'llewis@email.com', 180, 'Laura', 'F', 4);

INSERT INTO userTable VALUES
('mmiller', 'mmiller@email.com', 160, 'Micheal', 'M', 1);

INSERT INTO userTable VALUES
('nnelson', 'nnelson@email.com', 180, 'Natalie', 'F', 2);

INSERT INTO userTable VALUES
('oowens', 'oowens@email.com', 160, 'Oliver' , 'M', 3);

INSERT INTO userTable VALUES
('pparker' , 'pparker@email.com' , 180, 'Penelope' , 'F', 6);

INSERT INTO userTable VALUES
('qquinn', 'qquinn@email.com', 160, 'Quentin', 'M', 7);

INSERT INTO userTable VALUES
('rroberts', 'rroberts@email.com', 180, 'Rachel', 'F', 8);

INSERT INTO userTable VALUES
('ssmith', 'ssmit@email.com', 160, 'Sam' , 'M', 9);

INSERT INTO userTable VALUES
('ttaylor' , 'ttaylor@email.com' , 180, 'Theresa' , 'F', 10);


//exercises
INSERT INTO exercise VALUES
('Row', 'Row Machine', 'Biceps/Back');

INSERT INTO exercise VALUES
('Pull Down', 'Lap Machine', 'Biceps/Back');

INSERT INTO exercise VALUES
('Sqauts', 'Smith Machine', 'Legs');

INSERT INTO exercise VALUES
('Calf Extension', 'Free Weights', 'Legs');

INSERT INTO exercise VALUES
('Bench Press', 'Dumbell', 'Chest/Shoulders');

INSERT INTO exercise VALUES
('Bicep Curels', 'Chain Machine', 'Bicep/Back');

INSERT INTO exercise VALUES
('Tricep Pulldown', 'Chain Machine', 'Chest/Shoulders');

INSERT INTO exercise VALUES
('Planks', 'Yoga Mat', 'Core');

INSERT INTO exercise VALUES
('Situps', 'Yoga Mat', 'Core');

INSERT INTO exercise VALUES
('Walking', 'Tred', 'Cardio');

//goals
INSERT INTO goal (goal, startDate, endDate) VALUES 
('New weight record', DATE '2024-11-17', DATE '2024-12-17');

INSERT INTO goal (goal, startDate, endDate) VALUES 
('Tried a new exercise', DATE '17-11-24', DATE '2024-12-17');

INSERT INTO goal (goal, startDate, endDate) VALUES 
('Longest workout', DATE '17-11-24', DATE '2024-12-17');

INSERT INTO goal (goal, startDate, endDate) VALUES
('New Carloies record', DATE '17-11-24', DATE '2024-12-17');

INSERT INTO goal (goal, startDate, endDate) VALUES 
('Started a 3 day streak', DATE '17-11-24', DATE '2024-12-17');

INSERT INTO goal (goal, startDate, endDate) VALUES 
('First exercise', DATE '17-11-24', DATE '2024-12-17');

INSERT INTO goal (goal, startDate, endDate) VALUES 
('Worked out everyday this week', DATE '17-11-24', DATE '2024-12-17');

INSERT INTO goal (goal, startDate, endDate) VALUES 
('Worked a new mussel', DATE '17-11-24', DATE '2024-12-17');

//Connect a user with excerises they completed
INSERT INTO Workout VALUES
('kking', 120, 'Row');

INSERT INTO Workout VALUES
('llewis', 200, 'Pull Down');

INSERT INTO Workout VALUES
('mmiller', 250, 'Sqauts');

INSERT INTO Workout VALUES
('nnelson', 100, 'Bicep Curels');

INSERT INTO Workout VALUES
('oowens', 0, 'Situps');

INSERT INTO Workout VALUES
('pparker', 50, 'Calf Extension');

INSERT INTO Workout VALUES
('qquinn', 100, 'Bench Press');

INSERT INTO Workout VALUES
('rroberts', 0, 'Situps');

INSERT INTO Workout VALUES
('ssmith', 0, 'Walking');

INSERT INTO Workout VALUES
('ttaylor', 50, 'Tricep Pulldown');

//conected users with a goal they reached
INSERT INTO Reach VALUES
(DATE '2024-11-26', 'kking', 3);

INSERT INTO Reach VALUES
(DATE '2024-11-26', 'llewis', 1);

INSERT INTO Reach VALUES
(DATE '2024-11-26', 'mmiller', 6);

INSERT INTO Reach VALUES
(DATE '2024-11-26', 'nnelson', 5);

INSERT INTO Reach VALUES
(DATE '2024-11-26', 'oowens', 4);

INSERT INTO Reach VALUES
(DATE '2024-11-26', 'pparker', 2);

INSERT INTO Reach VALUES
(DATE '2024-11-26', 'qquinn', 3);

INSERT INTO Reach VALUES
(DATE '2024-11-26', 'rroberts', 7);

INSERT INTO Reach VALUES
(DATE '2024-11-26', 'ssmith', 8);

INSERT INTO Reach VALUES
(DATE '2024-11-26', 'ttaylor', 8);

//log each users excerise
INSERT INTO LogTable (Calories , startTime, endTime, username) VALUES
(500, TIMESTAMP '2024-11-17 1:00:00', TIMESTAMP '2024-11-17 3:00:00', 'kking');

INSERT INTO LogTable (Calories , startTime, endTime, username) VALUES
(741, TIMESTAMP '2024-11-17 4:00:00', TIMESTAMP '2024-11-17 4:30:00', 'llewis');

INSERT INTO LogTable (Calories , startTime, endTime, username) VALUES
(650, TIMESTAMP '2024-11-17 7:00:00', TIMESTAMP '2024-11-17 9:00:00', 'mmiller');

INSERT INTO LogTable (Calories , startTime, endTime, username) VALUES
(400, TIMESTAMP '2024-11-17 3:00:00', TIMESTAMP '2024-11-17 5:00:00', 'nnelson');

INSERT INTO LogTable (Calories , startTime, endTime, username) VALUES
(800, TIMESTAMP '2024-11-17 10:00:00', TIMESTAMP '2024-11-17 12:00:00', 'oowens');

INSERT INTO LogTable (Calories , startTime, endTime, username) VALUES
(343, TIMESTAMP '2024-11-17 8:14:00', TIMESTAMP '2024-11-17 10:33:00', 'pparker');

INSERT INTO LogTable (Calories , startTime, endTime, username) VALUES
(650, TIMESTAMP '2024-11-17 2:30:00', TIMESTAMP '2024-11-17 3:00:00', 'qquinn');

INSERT INTO LogTable (Calories , startTime, endTime, username) VALUES
(400, TIMESTAMP '2024-11-17 9:00:00', TIMESTAMP '2024-11-17 10:00:00', 'rroberts');

INSERT INTO LogTable (Calories , startTime, endTime, username) VALUES
(800, TIMESTAMP '2024-11-17 10:00:00', TIMESTAMP '2024-11-17 11:30:00', 'ssmith');

INSERT INTO LogTable (Calories , startTime, endTime, username) VALUES
(343, TIMESTAMP '2024-11-17 9:13:00', TIMESTAMP '2024-11-17 10:30:00', 'ttaylor');