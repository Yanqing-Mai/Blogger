DROP DATABASE IF EXISTS blog;

CREATE DATABASE blog;

USE blog;

CREATE TABLE loginInfo (
	logID INT AUTO_INCREMENT,
    username VARCHAR(25) NOT NULL,
    password VARCHAR(25) NOT NULL,
    email VARCHAR(25), 
    CONSTRAINT pk_LogID
        PRIMARY KEY (logID)
);

CREATE TABLE userInfo (
	userID INT AUTO_INCREMENT,
    lastName VARCHAR(25) NOT NULL,
    firstName VARCHAR(25) NOT NULL,
    birthday DATE, 
    phoneNumber VARCHAR(25),
    CONSTRAINT pk_UserID
        PRIMARY KEY (userID)
);

CREATE TABLE postContent (
	contentID INT AUTO_INCREMENT,
    content VARCHAR(1000) NOT NULL,
    createdByUser INT,
    CONSTRAINT pk_contentId
        PRIMARY KEY (contentID),
	CONSTRAINT fk_CreatedByUser
		FOREIGN KEY (createdByUser)
        REFERENCES userInfo (userID)
);

CREATE TABLE hashTags (
	hashID INT AUTO_INCREMENT,
    hashTag VARCHAR(25),
    CONSTRAINT pk_HashID
        PRIMARY KEY (hashID)
);

CREATE TABLE postHash (
	contentID INT,
    hashID INT,
    CONSTRAINT pk_PostHash
        PRIMARY KEY (contentId,hashID),
	CONSTRAINT fk_PostHash_Post
		FOREIGN KEY (contentID)
        REFERENCES postContent (contentID),
	CONSTRAINT fk_PostHash_Hash
		FOREIGN KEY (hashID)
        REFERENCES hashTags (hashID)
);




