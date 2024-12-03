/*
    Sample data for database
*/

//Trainers
INSERT INTO Trainer (fname, age,gender, email,rating) VALUES
('Rachel',40,'F', 'rgreen@letsgetfit.com', 5);

INSERT INTO Trainer (fname, age,gender, email,rating) VALUES
('Ross',39,'M', 'rgeller@letsgetfit.com', 4);

INSERT INTO Trainer (fname, age,gender, email,rating) VALUES
('Pheobe',40,'F', 'pbuffay@letsgetfit.com', 1);

INSERT INTO Trainer (fname, age,gender, email,rating) VALUES
('Chandler',41,'M', 'cbing@letsgetfit.com', 5);

INSERT INTO Trainer (fname, age,gender, email,rating) VALUES
('Joey',41,'M', 'jtribbiani@letsgetfit.com', 5);

INSERT INTO Trainer (fname, age,gender, email,rating) VALUES
('Monica',38,'M', 'mgeller@letsgetfit.com', 3);

//trainer phone numbers
INSERT into TrainerPhone VALUES
(1, '(123)-(456)-(7890)');

INSERT into TrainerPhone VALUES
(1, '(123)-(654)-(9872)');

INSERT into TrainerPhone VALUES
(2, '(123)-(789)-(45655)');

INSERT into TrainerPhone VALUES
(3, '(123)-(963)-(8528)');

INSERT into TrainerPhone VALUES
(4, '(123)-(753)-(3570)');

INSERT into TrainerPhone VALUES
(4, '(123)-(753)-(2159)');

INSERT into TrainerPhone VALUES
(5, '(321)-(852)-(0025)');

INSERT into TrainerPhone VALUES
(6, '(123)-(456)-(2654)');

//users
INSERT INTO userTable VALUES
('mscott', 'mscott@dundermifflin.com', 150, 'Micheal', 'M', 2);

INSERT INTO userTable VALUES
('dschrute', 'dschrute@dundermifflin.com', 180, 'Dwight', 'M', 4);

INSERT INTO userTable VALUES
('jhalpert', 'jhalpert@dundermifflin.com', 160, 'Jim', 'M', 1);

INSERT INTO userTable VALUES
('shudson', 'shudson@dundermifflin.com', 180, 'Stantley', 'M', 1);

INSERT INTO userTable VALUES
('phalpert', 'phalpert@dundermifflin.com', 160, 'Pam' , 'F', 3);

INSERT INTO userTable VALUES
('abernard' , 'abernard@dundermifflin.com' , 180, 'Andy' , 'M', 6);

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
('Worked out 5 days in a row', DATE '17-11-24', DATE '2024-12-17');

INSERT INTO goal (goal, startDate, endDate) VALUES 
('Run a mile on the tred', DATE '17-11-24', DATE '2024-12-17');

//Connect a user with excerises they completed
INSERT INTO Workout VALUES
('mscott', 120, 'Row');

INSERT INTO Workout VALUES
('dschrute', 200, 'Pull Down');

INSERT INTO Workout VALUES
('jhalpert', 250, 'Squats');

INSERT INTO Workout VALUES
('shudson', 100, 'Bench Press');

INSERT INTO Workout VALUES
('phalpert', 0, 'Situps');

INSERT INTO Workout VALUES
('abernard', 50, 'Tricep Pulldown');

//conected users with a goal they reached
INSERT INTO Reach VALUES
(DATE '2024-11-26', 'mscott', 3);

INSERT INTO Reach VALUES
(DATE '2024-11-26', 'dschrute', 1);

INSERT INTO Reach VALUES
(DATE '2024-11-26', 'jhalpert', 6);

INSERT INTO Reach VALUES
(DATE '2024-11-26', 'shudson', 5);

INSERT INTO Reach VALUES
(DATE '2024-11-26', 'phalpert', 4);

INSERT INTO Reach VALUES
(DATE '2024-11-26', 'abernard', 2);

//log each users excerise
INSERT INTO LogTable (Calories , startTime, endTime, username) VALUES
(500, TIMESTAMP '2024-11-17 1:00:00', TIMESTAMP '2024-11-17 3:00:00', 'mscott');

INSERT INTO LogTable (Calories , startTime, endTime, username) VALUES
(741, TIMESTAMP '2024-11-17 4:00:00', TIMESTAMP '2024-11-17 4:30:00', 'dschrute');

INSERT INTO LogTable (Calories , startTime, endTime, username) VALUES
(650, TIMESTAMP '2024-11-17 7:00:00', TIMESTAMP '2024-11-17 9:00:00', 'jhalpert');

INSERT INTO LogTable (Calories , startTime, endTime, username) VALUES
(400, TIMESTAMP '2024-11-17 3:00:00', TIMESTAMP '2024-11-17 5:00:00', 'shudson');

INSERT INTO LogTable (Calories , startTime, endTime, username) VALUES
(800, TIMESTAMP '2024-11-17 10:00:00', TIMESTAMP '2024-11-17 12:00:00', 'phalpert');

INSERT INTO LogTable (Calories , startTime, endTime, username) VALUES
(343, TIMESTAMP '2024-11-17 8:14:00', TIMESTAMP '2024-11-17 10:33:00', 'abernard');


