-- Applicant records
INSERT INTO Applicant(userID, name, password, currentlyEmployed, phoneNumber, address) VALUES
("a001", "Johnny James", "password123", "Yes", "604-123-1234", "123 Oxford St");
INSERT INTO Applicant VALUES
("a002", "Timothy Gray", "password123", "Yes", "604-000-0001", "379 Broadway St");
INSERT INTO Applicant VALUES
("a003", "Linda	Gonzalez", "password123", "No", "604-000-0002", "124 Main Mall");
INSERT INTO Applicant VALUES
("a004", "Jesse	Russell", "password123", "Yes", "604-000-0003", "2041 Reserve St");
INSERT INTO Applicant VALUES
("a005", "Katherine	Roberts", "password123", "No", "604-000-1010", "2010 Faith Ave");
INSERT INTO Applicant VALUES
("a006", "Charles Patterson", "password123", "No", "778-999-9999", "456 Broadway St");
INSERT INTO Applicant VALUES
("a007", "Edward Hill", "password123", "Yes", "604-555-5555", "11 Creek Rd");
INSERT INTO Applicant VALUES
("a008", "Ashley Evans", "password123", "Yes", "778-000-0011", "321 Duke St");
INSERT INTO Applicant VALUES
("a009", "Andrea Chang", "password123", "No", "778-123-1111", "589 Jasper Ave");
INSERT INTO Applicant VALUES
("a010", "Jim Brown", "password123", "Yes", "604-111-1111", "315 15th Ave");

-- Employer records
INSERT INTO Employer1(name, password) VALUES ("Roy Martin", "employer123");
INSERT INTO Employer1 VALUES ("Peter Cook", "employer123");
INSERT INTO Employer1 VALUES ("Tammy Smith", "employer123");
INSERT INTO Employer1 VALUES ("George Taylor", "employer123");
INSERT INTO Employer1 VALUES ("Jessica Kelly", "employer123");
INSERT INTO Employer1 VALUES ("Laura Lin", "employer123");
INSERT INTO Employer1 VALUES ("Jason Martinez", "employer123");
INSERT INTO Employer1 VALUES ("Calvin Wong", "employer123");
INSERT INTO Employer1 VALUES ("Frank Baker", "employer123");
INSERT INTO Employer1 VALUES ("Harold Foster", "employer123");

INSERT INTO Employer2(userID, name, company, address) VALUES ("e001", "Roy Martin", "Apple", "555 St. John St");
INSERT INTO Employer2 VALUES ("e002", "Peter Cook", "Google", "777 Baker Ave");
INSERT INTO Employer2 VALUES ("e003", "Tammy Smith", "Microsoft", "100 Bay St");
INSERT INTO Employer2 VALUES ("e004", "George Taylor", "Amazon", "111 Nelson St");
INSERT INTO Employer2 VALUES ("e005", "Jessica Kelly", "Hootsuite", "1040 Robson St");
INSERT INTO Employer2 VALUES ("e006", "Laura Lin", "BestBuy", "666 Sesame St");
INSERT INTO Employer2 VALUES ("e007", "Jason Martinez", "Samsung", "123 Ross St");
INSERT INTO Employer2 VALUES ("e008", "Calvin Wong", "Intel", "90 Broadway Ave");
INSERT INTO Employer2 VALUES ("e009", "Frank Baker", "Facebook", "10 Oxford Rd");
INSERT INTO Employer2 VALUES ("e010", "Harold Foster", "Twitter", "412 Duke Ave");

-- JobPosting records
INSERT INTO JobPosting1(company, industry) VALUES ("Apple", "Technology");
INSERT INTO JobPosting1 VALUES ("Google", "Technology");
INSERT INTO JobPosting1 VALUES ("Microsoft", "Technology");
INSERT INTO JobPosting1 VALUES ("Amazon", "Technology");
INSERT INTO JobPosting1 VALUES ("Hootsuite", "Technology");
INSERT INTO JobPosting1 VALUES ("BestBuy", "Technology");
INSERT INTO JobPosting1 VALUES ("Samsung", "Technology");
INSERT INTO JobPosting1 VALUES ("Intel", "Technology");
INSERT INTO JobPosting1 VALUES ("Facebook", "Technology");
INSERT INTO JobPosting1 VALUES ("Twitter", "Technology");

INSERT INTO JobPosting3(requirements, numberOfPositions) VALUES 
("As a member of the Software Engineering team you will develop...", 2);
INSERT INTO JobPosting3 VALUES 
("As a member of the Full-stack team you will develop...", 1);
INSERT INTO JobPosting3 VALUES 
("As a member of the Front-end team you will develop...", 1);
INSERT INTO JobPosting3 VALUES 
("As a member of the UX team you will develop...", 3);
INSERT INTO JobPosting3 VALUES 
("As a member of the Firmware Engineering team you will develop...", 1);
INSERT INTO JobPosting3 VALUES 
("As a member of the Web Developing team you will develop...", 2);
INSERT INTO JobPosting3 VALUES 
("As a member of the Developing team you will develop...", 2);
INSERT INTO JobPosting3 VALUES 
("As a member of the Firmware Certificate team you will develop...", 1);
INSERT INTO JobPosting3 VALUES 
("As a member of the Back-end team you will develop...", 2);
INSERT INTO JobPosting3 VALUES 
("As a member of the QA test team you will develop...", 3);

INSERT INTO JobPosting4(jpID, title, company, description, requirements, deadline) VALUES 
("jp001", "Software Engineer Intern", "Apple", "As a member of the Software Engineering team you will develop...", "Bachelor in Computer Science; JavaScript, Python", "2019-03-25");
INSERT INTO JobPosting4 VALUES 
("jp002", "Full-stack Developer", "Google", "As a member of the Full-stack team you will develop...", "Bachelor in Computer Science; JavaScript, Python", "2019-03-27");
INSERT INTO JobPosting4 VALUES 
("jp003", "Front-end Developer", "Microsoft", "As a member of the Front-end team you will develop...", "Bachelor in Computer Science; JavaScript, Python", "2019-03-27");
INSERT INTO JobPosting4 VALUES 
("jp004", "UX Designer", "Amazon", "As a member of the UX team you will develop...", "Bachelor in Computer Science; JavaScript, Python", "2019-03-25");
INSERT INTO JobPosting4 VALUES 
("jp005", "Firmware Engineer", "Hootsuite", "As a member of the Firmware Engineering team you will develop...", "Bachelor in Computer Science; JavaScript, Python", "2019-03-18");
INSERT INTO JobPosting4 VALUES 
("jp006", "Web Developer", "BestBuy", "As a member of the Web Developing team you will develop...", "Bachelor in Computer Science; JavaScript, Python", "2019-04-08");
INSERT INTO JobPosting4 VALUES 
("jp007", "Software Developer", "Samsung", "As a member of the Developing team you will develop...", "Bachelor in Computer Science; JavaScript, Python", "2019-03-10");
INSERT INTO JobPosting4 VALUES 
("jp008", "Firmware Certificate Engineer", "Intel", "As a member of the Firmware Certificate team you will develop...", "Bachelor in Computer Science; JavaScript, Python", "2019-03-28");
INSERT INTO JobPosting4 VALUES 
("jp009", "Backend Developer", "Facebook", "As a member of the Back-end team you will develop...", "Bachelor in Computer Science; JavaScript, Python", "2019-03-25");
INSERT INTO JobPosting4 VALUES 
("jp010", "Associate QA Engineer", "Twitter", "As a member of the QA test team you will develop...", "Bachelor in Computer Science; JavaScript, Python", "2019-03-29");

-- Post records
INSERT INTO Post(userID, jpID) VALUES ("e001", "jp001");
INSERT INTO Post VALUES ("e002", "jp002");
INSERT INTO Post VALUES ("e003", "jp003");
INSERT INTO Post VALUES ("e004", "jp004");
INSERT INTO Post VALUES ("e005", "jp005");
INSERT INTO Post VALUES ("e006", "jp006");
INSERT INTO Post VALUES ("e007", "jp007");
INSERT INTO Post VALUES ("e008", "jp008");
INSERT INTO Post VALUES ("e009", "jp009");
INSERT INTO Post VALUES ("e010", "jp010");

-- Create_Application records
INSERT INTO Create_Application(appID, resume, coverLetter, userID) VALUES ();


-- Have_Reference records
INSERT INTO Have_Reference(name, phoneNumber, currentTitle, appID) VALUES ();

-- To see the table records (placeholder for now)
SELECT * FROM Applicant;
SELECT * FROM Employer1;
SELECT * FROM Employer2;
SELECT * FROM JobPosting1;
SELECT * FROM JobPosting3;
SELECT * FROM JobPosting4;
SELECT * FROM Post;