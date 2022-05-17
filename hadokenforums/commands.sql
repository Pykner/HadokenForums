CREATE DATABASE hadoken;
USE hadoken;

CREATE TABLE account (
	Accountid int AUTO_INCREMENT,
	user varchar(20),
	hash varchar(255),
    stat varchar(2000),


	PRIMARY KEY (Accountid)
);

CREATE TABLE webupdate (
	Webupdateid int AUTO_INCREMENT,
	title varchar(50),
	txt varchar(8000),
	
	PRIMARY KEY (Webupdateid)
);

CREATE TABLE threads (
	Threadid int AUTO_INCREMENT,
	FkAccountid int,
	title varchar(50),
	
	PRIMARY KEY (Threadid),
    FOREIGN KEY (FkAccountid) REFERENCES account(Accountid)
	
);

CREATE TABLE posts (
	Postid int AUTO_INCREMENT,
	title varchar(50),
	txt varchar(8000),
	date_post datetime,
    likes int,
    FkThreadId int,
    FkAccountid int,
	
	PRIMARY KEY (Postid),
    FOREIGN KEY (FkThreadId) REFERENCES threads(ThreadId),
	FOREIGN KEY (FkAccountid) REFERENCES account(Accountid)
	
);

CREATE INDEX postThreadsIndex ON posts ( FkThreadId, date_post );


CREATE TABLE tournament (
	id int AUTO_INCREMENT,
    title varchar(50),
    link varchar(200),
    txt varchar(8000),
    likes int,
	data_inizio date,
	data_fine date,
	FkAccountid int,
    major boolean,

	
	PRIMARY KEY (id),
	FOREIGN KEY (FkAccountid) REFERENCES account(Accountid)
);

CREATE TABLE matchmaking (
	Matchmakingid int AUTO_INCREMENT,
	game varchar(100),
    skill_level varchar(50),
    play_hour varchar(50),
    communication varchar(200),
    txt varchar(255),
	FkAccountid int,
	
	PRIMARY KEY (Matchmakingid),
	FOREIGN KEY (FkAccountid) REFERENCES account(Accountid)
);

CREATE TABLE resources (
	Resourceid int AUTO_INCREMENT,
	title varchar(50),
    txt varchar(8000),
    valid boolean,
	FkAccountid int,
	
	PRIMARY KEY (Resourceid),
	FOREIGN KEY (FkAccountid) REFERENCES account(Accountid)
);