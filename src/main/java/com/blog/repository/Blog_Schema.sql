DROP DATABASE IF EXISTS blog;

CREATE DATABASE blog;

USE blog;

CREATE TABLE loginInfo (
	id INT AUTO_INCREMENT,
    username VARCHAR(25) NOT NULL,
    password VARCHAR(25) NOT NULL,
    email VARCHAR(25), 
    CONSTRAINT pk_id
        PRIMARY KEY (id)
);

CREATE TABLE postContent (
	contentId INT AUTO_INCREMENT,
    content VARCHAR(100) NOT NULL,
    createdByUser VARCHAR(25) NOT NULL,
    email VARCHAR(25), 
    username VARCHAR(25),
    CONSTRAINT pk_contentId
        PRIMARY KEY (contentId)
);

CREATE TABLE userInfo (
	id INT AUTO_INCREMENT,
    lastName VARCHAR(25) NOT NULL,
    firstName VARCHAR(25) NOT NULL,
    birthday DATE, 
    phoneNumber VARCHAR(25),
	email VARCHAR(25),
	username VARCHAR(25),
    CONSTRAINT pk_id
        PRIMARY KEY (id)
);

