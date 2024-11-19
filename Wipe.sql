/*
    Wipe database
*/

//Drop all tables, triggers indexes
drop table userTable cascade constraints;
drop table trainer cascade constraints;
drop table trainerPhone cascade constraints;
drop table goal cascade constraints;
drop table logTable cascade constraints;
drop table exercise cascade constraints;
drop table workout cascade constraints;
drop table reach cascade constraints;

//Drop sequences
drop sequence trainerIDSeq;
drop sequence goalIDseq;
drop sequence logNumberSeq;

//drop views
drop view trainerInfo;
