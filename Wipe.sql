/*
    Drop checks
*/
ALTER table Goal
DROP constraint checkTimes;

/*
    Drop any existing tables, or wipe database 
*/
drop table userTable cascade constraints;
drop table trainer cascade constraints;
drop table tranierPhone cascade constraints;
drop table goal cascade constraints;
drop table logTable cascade constraints;
drop table exercise cascade constraints;
drop table workout cascade constraints;
drop table reach cascade constraints;
drop table TrainerPhone cascade constraints;

/*
    Drop Triggers
*/

drop trigger setTrainerID;
drop trigger setGoalID;
drop trigger ensureUserHasTrainer;

/*
    Drop sequences
*/

drop sequence trainerIDSeq;
drop sequence goalIDseq;

/*
    Drop Views
*/

drop view trainerInfo;

/*
    Drop indexs
*/

drop index userEmailIndex;
drop index trainerEmailIndex;