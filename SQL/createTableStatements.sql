CREATE TABLE Applicant(
    phoneNumber INTEGER,
    currentlyEmployed VARCHAR(4), 
    name VARCHAR(20),
    userID VARCHAR(10) PRIMARY KEY, 
    password VARCHAR(20),
    address VARCHAR(64) 
);

CREATE TABLE Employer1(
    name VARCHAR(20) 
    PRIMARY KEY, 
    password VARCHAR(20)
);

CREATE TABLE Employer2(
    name VARCHAR(20),
    address VARCHAR(64),
    userID VARCHAR(10) PRIMARY KEY, 
    Company VARCHAR(20)
);

CREATE TABLE JobPosting1(
    company VARCHAR(20) PRIMARY KEY, 
    industry VARCHAR(20)
);

CREATE TABLE JobPosting3(
    requirements VARCHAR(100) PRIMARY KEY,
    numberOfPositions INTEGER
);

CREATE TABLE JobPosting4(
    jpID VARCHAR(10) PRIMARY KEY,
    company VARCHAR(20) NOT NULL, 
    description VARCHAR(100), 
    requirements VARCHAR(100),
    title VARCHAR(20)
);

CREATE TABLE Participate_Interview1(
    interviewerName VARCHAR(20),
    time VARCHAR(10),
    date DATE,
    medium VARCHAR(10),
    PRIMARY KEY (interviewerName, time, date)
);

CREATE TABLE Participate_Interview2(
    interviewID VARCHAR(10) PRIMARY KEY,
    interviewerName VARCHAR(20),
    location VARCHAR(64) NOT NULL,
    time VARCHAR(10) NOT NULL,
    date DATE, 
    userID VARCHAR(10),
    FOREIGN KEY (userID) REFERENCES Applicant(userID) ON DELETE CASCADE 
    ON UPDATE CASCADE
);

CREATE TABLE For_Interview1(
    interviewerName VARCHAR(20),
    time VARCHAR(10) NOT NULL,
    date DATE,
    medium VARCHAR(10) NOT NULL,
    PRIMARY KEY (interviewerName, time, date)
);

CREATE TABLE For_Interview2(
    interviewID VARCHAR(10) PRIMARY KEY, 
    interviewerName CHAR(20),
    location VARCHAR(64) NOT NULL, 
    time VARCHAR(10) NOT NULL,
    date DATE,
    userID VARCHAR(10),
    FOREIGN KEY (userID) REFERENCES Applicant(userID) ON DELETE CASCADE
    ON UPDATE CASCADE
);

CREATE TABLE For_JobOffer(
    offerID VARCHAR(10) PRIMARY KEY,
    startDate DATE,
    Salary VARCHAR(20),
    jpID VARCHAR(10) NOT NULL,
    FOREIGN KEY (jpID) REFERENCES JobPosting4(jpID) ON DELETE NO ACTION
    ON UPDATE CASCADE
);

CREATE TABLE Post(
    userID VARCHAR(10),
    jpID VARCHAR(10),
    PRIMARY KEY (userID, jpID),
    FOREIGN KEY (userID) REFERENCES Employer2(userID), 
    FOREIGN KEY (jpID) REFERENCES JobPosting4(jpID)
);

CREATE TABLE ApplyTo_Application( 
    appID VARCHAR(10) PRIMARY KEY, 
    resume VARCHAR(64),
    coverLetter VARCHAR(64),
    jpID VARCHAR(10) NOT NULL,
    FOREIGN KEY (jpID) REFERENCES JobPosting4(jpID) ON DELETE NO ACTION
    ON UPDATE CASCADE
);

CREATE TABLE Create_Application(
    appID VARCHAR(10) PRIMARY KEY,
    resume VARCHAR(64),
    coverLetter VARCHAR(64),
    userID VARCHAR(10) NOT NULL,
    FOREIGN KEY (userID) REFERENCES Applicant (userID) ON DELETE NO ACTION
    ON UPDATE CASCADE
);

CREATE TABLE Have_Reference (
    phoneNumber INTEGER,
    currentTitle VARCHAR(64),
    name VARCHAR(20),
    appID VARCHAR(10),
    PRIMARY KEY (phoneNumber, appID),
    FOREIGN KEY (appID) REFERENCES ApplyTo_Application (appID) ON DELETE CASCADE
);

CREATE TABLE Receive(
    userID VARCHAR(10),
    offerID VARCHAR(10),
    daysToRespond INTEGER,
    PRIMARY KEY (userID, offerID),
    FOREIGN KEY (userID) REFERENCES Applicant(userID), 
    FOREIGN KEY (offerID) REFERENCES For_JobOffer(offerID)
);













