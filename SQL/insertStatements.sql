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
("Bachelor in Computer Science; JavaScript, Python", 2);
INSERT INTO JobPosting3 VALUES 
("Master in Computer Engineering; C/C++, MySQL", 1);
INSERT INTO JobPosting3 VALUES 
("Bachelor in Computer Science; JavaScript, SQL", 1);
INSERT INTO JobPosting3 VALUES 
("Bachelor in Computer Science or Mathematics; JavaScript, Python", 3);
INSERT INTO JobPosting3 VALUES 
("Master in Computer Science; Ruby, Python", 1);
INSERT INTO JobPosting3 VALUES 
("Bachelor in Computer Engineering; Java, TypeScript", 2);
INSERT INTO JobPosting3 VALUES 
("PhD in Computer Science; JavaScript such as node.js, Selenium", 2);
INSERT INTO JobPosting3 VALUES 
("Bachelor in Computer Engineering; JavaScript or TypeScript", 1);
INSERT INTO JobPosting3 VALUES 
("Master in Mathematics or Computer Science; Selenium, Java", 2);
INSERT INTO JobPosting3 VALUES 
("PhD in Computer Engineering", 3);

INSERT INTO JobPosting4(jpID, title, company, description, requirements, deadline) VALUES 
("jp001", "Software Engineer Intern", "Apple", "As a member of the Software Engineering team you will develop...", "Bachelor in Computer Science; JavaScript, Python", "2019-03-25");
INSERT INTO JobPosting4 VALUES 
("jp002", "Full-stack Developer", "Google", "As a member of the Full-stack team you will develop...", "Master in Computer Engineering; C/C++, MySQL", "2019-03-27");
INSERT INTO JobPosting4 VALUES 
("jp003", "Front-end Developer", "Microsoft", "As a member of the Front-end team you will develop...", "Bachelor in Computer Science; JavaScript, SQL", "2019-03-27");
INSERT INTO JobPosting4 VALUES 
("jp004", "UX Designer", "Amazon", "As a member of the UX team you will develop...", "Bachelor in Computer Science or Mathematics; JavaScript, Python", "2019-03-25");
INSERT INTO JobPosting4 VALUES 
("jp005", "Firmware Engineer", "Hootsuite", "As a member of the Firmware Engineering team you will develop...", "Master in Computer Science; Ruby, Python", "2019-03-18");
INSERT INTO JobPosting4 VALUES 
("jp006", "Web Developer", "BestBuy", "As a member of the Web Developing team you will develop...", "Bachelor in Computer Engineering; Java, TypeScript", "2019-04-08");
INSERT INTO JobPosting4 VALUES 
("jp007", "Software Developer", "Samsung", "As a member of the Developing team you will develop...", "PhD in Computer Science; JavaScript such as node.js, Selenium", "2019-03-10");
INSERT INTO JobPosting4 VALUES 
("jp008", "Firmware Certificate Engineer", "Intel", "As a member of the Firmware Certificate team you will develop...", "Bachelor in Computer Engineering; JavaScript or TypeScript", "2019-03-28");
INSERT INTO JobPosting4 VALUES 
("jp009", "Backend Developer", "Facebook", "As a member of the Back-end team you will develop...", "Master in Mathematics or Computer Science; Selenium, Java", "2019-03-25");
INSERT INTO JobPosting4 VALUES 
("jp010", "Associate QA Engineer", "Twitter", "As a member of the QA test team you will develop...", "PhD in Computer Engineering", "2019-03-29");

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
INSERT INTO Create_Application(resume, coverLetter, userID) VALUES ("https://www.dropbox.com/s/kd4pcvfkwpfreqz/SampleResume.pdf?dl=0", "https://www.dropbox.com/s/akibhaj3c4v1q0y/SampleCL.pdf?dl=0", "a001");
INSERT INTO Create_Application(resume, coverLetter, userID) VALUES ("https://www.dropbox.com/s/kd4pcvfkwpfreqz/SampleResume.pdf?dl=0", "https://www.dropbox.com/s/akibhaj3c4v1q0y/SampleCL.pdf?dl=0", "a002");
INSERT INTO Create_Application(resume, coverLetter, userID) VALUES ("https://www.dropbox.com/s/kd4pcvfkwpfreqz/SampleResume.pdf?dl=0", "https://www.dropbox.com/s/akibhaj3c4v1q0y/SampleCL.pdf?dl=0", "a003");
INSERT INTO Create_Application(resume, coverLetter, userID) VALUES ("https://www.dropbox.com/s/kd4pcvfkwpfreqz/SampleResume.pdf?dl=0", "https://www.dropbox.com/s/akibhaj3c4v1q0y/SampleCL.pdf?dl=0", "a004");
INSERT INTO Create_Application(resume, coverLetter, userID) VALUES ("https://www.dropbox.com/s/kd4pcvfkwpfreqz/SampleResume.pdf?dl=0", "https://www.dropbox.com/s/akibhaj3c4v1q0y/SampleCL.pdf?dl=0", "a005");
INSERT INTO Create_Application(resume, coverLetter, userID) VALUES ("https://www.dropbox.com/s/kd4pcvfkwpfreqz/SampleResume.pdf?dl=0", "https://www.dropbox.com/s/akibhaj3c4v1q0y/SampleCL.pdf?dl=0", "a006");
INSERT INTO Create_Application(resume, coverLetter, userID) VALUES ("https://www.dropbox.com/s/kd4pcvfkwpfreqz/SampleResume.pdf?dl=0", "https://www.dropbox.com/s/akibhaj3c4v1q0y/SampleCL.pdf?dl=0", "a007");
INSERT INTO Create_Application(resume, coverLetter, userID) VALUES ("https://www.dropbox.com/s/kd4pcvfkwpfreqz/SampleResume.pdf?dl=0", "https://www.dropbox.com/s/akibhaj3c4v1q0y/SampleCL.pdf?dl=0", "a008");
INSERT INTO Create_Application(resume, coverLetter, userID) VALUES ("https://www.dropbox.com/s/kd4pcvfkwpfreqz/SampleResume.pdf?dl=0", "https://www.dropbox.com/s/akibhaj3c4v1q0y/SampleCL.pdf?dl=0", "a009");
INSERT INTO Create_Application(resume, coverLetter, userID) VALUES ("https://www.dropbox.com/s/kd4pcvfkwpfreqz/SampleResume.pdf?dl=0", "https://www.dropbox.com/s/akibhaj3c4v1q0y/SampleCL.pdf?dl=0", "a010");

INSERT INTO Create_Application(resume, coverLetter, userID) VALUES ("https://www.dropbox.com/s/kd4pcvfkwpfreqz/SampleResume.pdf?dl=0", "https://www.dropbox.com/s/akibhaj3c4v1q0y/SampleCL.pdf?dl=0", "a002");
INSERT INTO Create_Application(resume, coverLetter, userID) VALUES ("https://www.dropbox.com/s/kd4pcvfkwpfreqz/SampleResume.pdf?dl=0", "https://www.dropbox.com/s/akibhaj3c4v1q0y/SampleCL.pdf?dl=0", "a002");
INSERT INTO Create_Application(resume, coverLetter, userID) VALUES ("https://www.dropbox.com/s/kd4pcvfkwpfreqz/SampleResume.pdf?dl=0", "https://www.dropbox.com/s/akibhaj3c4v1q0y/SampleCL.pdf?dl=0", "a002");
INSERT INTO Create_Application(resume, coverLetter, userID) VALUES ("https://www.dropbox.com/s/kd4pcvfkwpfreqz/SampleResume.pdf?dl=0", "https://www.dropbox.com/s/akibhaj3c4v1q0y/SampleCL.pdf?dl=0", "a002");
INSERT INTO Create_Application(resume, coverLetter, userID) VALUES ("https://www.dropbox.com/s/kd4pcvfkwpfreqz/SampleResume.pdf?dl=0", "https://www.dropbox.com/s/akibhaj3c4v1q0y/SampleCL.pdf?dl=0", "a003");
INSERT INTO Create_Application(resume, coverLetter, userID) VALUES ("https://www.dropbox.com/s/kd4pcvfkwpfreqz/SampleResume.pdf?dl=0", "https://www.dropbox.com/s/akibhaj3c4v1q0y/SampleCL.pdf?dl=0", "a003");
INSERT INTO Create_Application(resume, coverLetter, userID) VALUES ("https://www.dropbox.com/s/kd4pcvfkwpfreqz/SampleResume.pdf?dl=0", "https://www.dropbox.com/s/akibhaj3c4v1q0y/SampleCL.pdf?dl=0", "a003");
INSERT INTO Create_Application(resume, coverLetter, userID) VALUES ("https://www.dropbox.com/s/kd4pcvfkwpfreqz/SampleResume.pdf?dl=0", "https://www.dropbox.com/s/akibhaj3c4v1q0y/SampleCL.pdf?dl=0", "a004");
INSERT INTO Create_Application(resume, coverLetter, userID) VALUES ("https://www.dropbox.com/s/kd4pcvfkwpfreqz/SampleResume.pdf?dl=0", "https://www.dropbox.com/s/akibhaj3c4v1q0y/SampleCL.pdf?dl=0", "a004");
INSERT INTO Create_Application(resume, coverLetter, userID) VALUES ("https://www.dropbox.com/s/kd4pcvfkwpfreqz/SampleResume.pdf?dl=0", "https://www.dropbox.com/s/akibhaj3c4v1q0y/SampleCL.pdf?dl=0", "a005");
INSERT INTO Create_Application(resume, coverLetter, userID) VALUES ("https://www.dropbox.com/s/kd4pcvfkwpfreqz/SampleResume.pdf?dl=0", "https://www.dropbox.com/s/akibhaj3c4v1q0y/SampleCL.pdf?dl=0", "a005");
INSERT INTO Create_Application(resume, coverLetter, userID) VALUES ("https://www.dropbox.com/s/kd4pcvfkwpfreqz/SampleResume.pdf?dl=0", "https://www.dropbox.com/s/akibhaj3c4v1q0y/SampleCL.pdf?dl=0", "a005");
INSERT INTO Create_Application(resume, coverLetter, userID) VALUES ("https://www.dropbox.com/s/kd4pcvfkwpfreqz/SampleResume.pdf?dl=0", "https://www.dropbox.com/s/akibhaj3c4v1q0y/SampleCL.pdf?dl=0", "a006");
INSERT INTO Create_Application(resume, coverLetter, userID) VALUES ("https://www.dropbox.com/s/kd4pcvfkwpfreqz/SampleResume.pdf?dl=0", "https://www.dropbox.com/s/akibhaj3c4v1q0y/SampleCL.pdf?dl=0", "a008");
INSERT INTO Create_Application(resume, coverLetter, userID) VALUES ("https://www.dropbox.com/s/kd4pcvfkwpfreqz/SampleResume.pdf?dl=0", "https://www.dropbox.com/s/akibhaj3c4v1q0y/SampleCL.pdf?dl=0", "a008");
INSERT INTO Create_Application(resume, coverLetter, userID) VALUES ("https://www.dropbox.com/s/kd4pcvfkwpfreqz/SampleResume.pdf?dl=0", "https://www.dropbox.com/s/akibhaj3c4v1q0y/SampleCL.pdf?dl=0", "a008");
INSERT INTO Create_Application(resume, coverLetter, userID) VALUES ("https://www.dropbox.com/s/kd4pcvfkwpfreqz/SampleResume.pdf?dl=0", "https://www.dropbox.com/s/akibhaj3c4v1q0y/SampleCL.pdf?dl=0", "a008");
INSERT INTO Create_Application(resume, coverLetter, userID) VALUES ("https://www.dropbox.com/s/kd4pcvfkwpfreqz/SampleResume.pdf?dl=0", "https://www.dropbox.com/s/akibhaj3c4v1q0y/SampleCL.pdf?dl=0", "a009");
INSERT INTO Create_Application(resume, coverLetter, userID) VALUES ("https://www.dropbox.com/s/kd4pcvfkwpfreqz/SampleResume.pdf?dl=0", "https://www.dropbox.com/s/akibhaj3c4v1q0y/SampleCL.pdf?dl=0", "a010");
INSERT INTO Create_Application(resume, coverLetter, userID) VALUES ("https://www.dropbox.com/s/kd4pcvfkwpfreqz/SampleResume.pdf?dl=0", "https://www.dropbox.com/s/akibhaj3c4v1q0y/SampleCL.pdf?dl=0", "a010");

INSERT INTO Create_Application(resume, coverLetter, userID) VALUES ("a link to the resume...", "a link to the cover letter", "a001");
INSERT INTO Create_Application(resume, coverLetter, userID) VALUES ("a link to the resume...", "a link to the cover letter", "a002");
INSERT INTO Create_Application(resume, coverLetter, userID) VALUES ("a link to the resume...", "a link to the cover letter", "a003");
INSERT INTO Create_Application(resume, coverLetter, userID) VALUES ("a link to the resume...", "a link to the cover letter", "a004");
INSERT INTO Create_Application(resume, coverLetter, userID) VALUES ("a link to the resume...", "a link to the cover letter", "a006");
INSERT INTO Create_Application(resume, coverLetter, userID) VALUES ("a link to the resume...", "a link to the cover letter", "a007");
INSERT INTO Create_Application(resume, coverLetter, userID) VALUES ("a link to the resume...", "a link to the cover letter", "a009");
INSERT INTO Create_Application(resume, coverLetter, userID) VALUES ("a link to the resume...", "a link to the cover letter", "a010");
INSERT INTO Create_Application(resume, coverLetter, userID) VALUES ("a link to the resume...", "a link to the cover letter", "a003");
INSERT INTO Create_Application(resume, coverLetter, userID) VALUES ("a link to the resume...", "a link to the cover letter", "a004");
INSERT INTO Create_Application(resume, coverLetter, userID) VALUES ("a link to the resume...", "a link to the cover letter", "a006");
INSERT INTO Create_Application(resume, coverLetter, userID) VALUES ("a link to the resume...", "a link to the cover letter", "a007");
INSERT INTO Create_Application(resume, coverLetter, userID) VALUES ("a link to the resume...", "a link to the cover letter", "a009");
INSERT INTO Create_Application(resume, coverLetter, userID) VALUES ("a link to the resume...", "a link to the cover letter", "a010");
INSERT INTO Create_Application(resume, coverLetter, userID) VALUES ("a link to the resume...", "a link to the cover letter", "a001");


-- ApplyTo_Application records
INSERT INTO ApplyTo_Application(appID, jpID) VALUES (1, "jp001");
INSERT INTO ApplyTo_Application(appID, jpID) VALUES (2, "jp001");
INSERT INTO ApplyTo_Application(appID, jpID) VALUES (3, "jp001");
INSERT INTO ApplyTo_Application(appID, jpID) VALUES (4, "jp001");
INSERT INTO ApplyTo_Application(appID, jpID) VALUES (5, "jp001");
INSERT INTO ApplyTo_Application(appID, jpID) VALUES (6, "jp001");
INSERT INTO ApplyTo_Application(appID, jpID) VALUES (7, "jp001");
INSERT INTO ApplyTo_Application(appID, jpID) VALUES (8, "jp001");
INSERT INTO ApplyTo_Application(appID, jpID) VALUES (9, "jp001");
INSERT INTO ApplyTo_Application(appID, jpID) VALUES (10, "jp001");	
INSERT INTO ApplyTo_Application(appID, jpID) VALUES (11, "jp002");
INSERT INTO ApplyTo_Application(appID, jpID) VALUES (12, "jp002");
INSERT INTO ApplyTo_Application(appID, jpID) VALUES (13, "jp003");
INSERT INTO ApplyTo_Application(appID, jpID) VALUES (14, "jp004");
INSERT INTO ApplyTo_Application(appID, jpID) VALUES (15, "jp005");
INSERT INTO ApplyTo_Application(appID, jpID) VALUES (16, "jp006");
INSERT INTO ApplyTo_Application(appID, jpID) VALUES (17, "jp007");
INSERT INTO ApplyTo_Application(appID, jpID) VALUES (18, "jp008");
INSERT INTO ApplyTo_Application(appID, jpID) VALUES (19, "jp009");
INSERT INTO ApplyTo_Application(appID, jpID) VALUES (20, "jp010");
INSERT INTO ApplyTo_Application(appID, jpID) VALUES (21, "jp001");
INSERT INTO ApplyTo_Application(appID, jpID) VALUES (22, "jp002");
INSERT INTO ApplyTo_Application(appID, jpID) VALUES (23, "jp003");
INSERT INTO ApplyTo_Application(appID, jpID) VALUES (24, "jp010");
INSERT INTO ApplyTo_Application(appID, jpID) VALUES (25, "jp001");
INSERT INTO ApplyTo_Application(appID, jpID) VALUES (26, "jp002");
INSERT INTO ApplyTo_Application(appID, jpID) VALUES (27, "jp003");
INSERT INTO ApplyTo_Application(appID, jpID) VALUES (28, "jp007");
INSERT INTO ApplyTo_Application(appID, jpID) VALUES (29, "jp004");
INSERT INTO ApplyTo_Application(appID, jpID) VALUES (30, "jp009");

INSERT INTO ApplyTo_Application(appID, jpID) VALUES (31, "jp010");
INSERT INTO ApplyTo_Application(appID, jpID) VALUES (32, "jp010");
INSERT INTO ApplyTo_Application(appID, jpID) VALUES (33, "jp010");
INSERT INTO ApplyTo_Application(appID, jpID) VALUES (34, "jp010");
INSERT INTO ApplyTo_Application(appID, jpID) VALUES (35, "jp010");
INSERT INTO ApplyTo_Application(appID, jpID) VALUES (36, "jp010");
INSERT INTO ApplyTo_Application(appID, jpID) VALUES (37, "jp010");
INSERT INTO ApplyTo_Application(appID, jpID) VALUES (38, "jp010");
INSERT INTO ApplyTo_Application(appID, jpID) VALUES (39, "jp002");
INSERT INTO ApplyTo_Application(appID, jpID) VALUES (40, "jp002");
INSERT INTO ApplyTo_Application(appID, jpID) VALUES (41, "jp002");
INSERT INTO ApplyTo_Application(appID, jpID) VALUES (42, "jp002");
INSERT INTO ApplyTo_Application(appID, jpID) VALUES (43, "jp002");
INSERT INTO ApplyTo_Application(appID, jpID) VALUES (44, "jp002");
INSERT INTO ApplyTo_Application(appID, jpID) VALUES (45, "jp002");

-- Participate_Interview records
INSERT INTO Participate_Interview1(interviewerName, time, date, medium) VALUES ("John Doe", "15:00", "2019-05-01", "In-person");
INSERT INTO Participate_Interview1 VALUES ("John Doe", "17:00", "2019-05-01", "In-person");
INSERT INTO Participate_Interview1 VALUES ("Rachel Smith", "11:00", "2019-05-04", "In-person");
INSERT INTO Participate_Interview1 VALUES ("Rachel Smith", "13:00", "2019-05-04", "In-person");
INSERT INTO Participate_Interview1 VALUES ("Rachel Smith", "15:00", "2019-05-04", "In-person");
INSERT INTO Participate_Interview1 VALUES ("Kevin Knox", "12:00", "2019-05-04", "Phone");
INSERT INTO Participate_Interview1 VALUES ("Kevin Knox", "13:00", "2019-05-04", "Phone");
INSERT INTO Participate_Interview1 VALUES ("Joe Burner", "13:00", "2019-05-11", "In-person");
INSERT INTO Participate_Interview1 VALUES ("Josh Liu", "09:00", "2019-05-05", "Phone");
INSERT INTO Participate_Interview1 VALUES ("Josh Liu", "10:30", "2019-05-05", "Phone");
INSERT INTO Participate_Interview1 VALUES ("Tina Fernandez", "10:30", "2019-05-07", "Phone");
INSERT INTO Participate_Interview1 VALUES ("Miguel Lau", "16:00", "2019-05-08", "In-person");
INSERT INTO Participate_Interview1 VALUES ("Miguel Lau", "17:00", "2019-05-08", "In-person");
INSERT INTO Participate_Interview1 VALUES ("Samson Lo", "12:00", "2019-05-06", "Phone");
INSERT INTO Participate_Interview1 VALUES ("Maurice Cook", "13:00", "2019-05-06", "Phone");
INSERT INTO Participate_Interview1 VALUES ("Maurice Cook", "14:00", "2019-05-06", "Phone");
INSERT INTO Participate_Interview1 VALUES ("Trevor Mar", "14:00", "2019-05-12", "In-person");

INSERT INTO Participate_Interview2(interviewID, interviewerName, time, date, location, userID) VALUES ("int001", "John Doe", "15:00", "2019-05-01", "8912 Oxford St", "a002");
INSERT INTO Participate_Interview2 VALUES ("int002", "John Doe", "17:00", "2019-05-01", "8912 Oxford St", "a008");
INSERT INTO Participate_Interview2 VALUES ("int003", "Rachel Smith", "11:00", "2019-05-04", "125 Faith Rd", "a001");
INSERT INTO Participate_Interview2 VALUES ("int004", "Rachel Smith", "13:00", "2019-05-04", "125 Faith Rd", "a002");
INSERT INTO Participate_Interview2 VALUES ("int005", "Rachel Smith", "15:00", "2019-05-04", "125 Faith Rd", "a005");
INSERT INTO Participate_Interview2 VALUES ("int006", "Kevin Knox", "12:00", "2019-05-04", "888 Bingo St", "a001");
INSERT INTO Participate_Interview2 VALUES ("int007", "Kevin Knox", "13:00", "2019-05-04", "888 Bingo St", "a006");
INSERT INTO Participate_Interview2 VALUES ("int008", "Joe Burner", "13:00", "2019-05-11", "888 Heather Ave", "a010");
INSERT INTO Participate_Interview2 VALUES ("int009", "Josh Liu", "09:00", "2019-05-05", "300 E 45th Ave", "a003");
INSERT INTO Participate_Interview2 VALUES ("int010", "Josh Liu", "10:30", "2019-05-05", "300 E 45th Ave", "a001");
INSERT INTO Participate_Interview2 VALUES ("int011", "Tina Fernandez", "10:30", "2019-05-07", "900 Random Rd", "a003");
INSERT INTO Participate_Interview2 VALUES ("int012", "Miguel Lau", "16:00", "2019-05-08", "900 Something St", "a001");
INSERT INTO Participate_Interview2 VALUES ("int013", "Miguel Lau", "17:00", "2019-05-08", "900 Something St", "a009");
INSERT INTO Participate_Interview2 VALUES ("int014", "Samson Lo", "12:00", "2019-05-06", "144 Water Rd", "a004");
INSERT INTO Participate_Interview2 VALUES ("int015", "Maurice Cook", "13:00", "2019-05-06", "144 Water Rd", "a004");
INSERT INTO Participate_Interview2 VALUES ("int016", "Maurice Cook", "14:00", "2019-05-06", "144 Water Rd", "a010");
INSERT INTO Participate_Interview2 VALUES ("int017", "Trevor Mar", "14:00", "2019-05-12", "66 Pencil Ave", "a005");

-- For_Interview records
INSERT INTO For_Interview1(interviewerName, time, date, medium) VALUES ("John Doe", "15:00", "2019-05-01", "In-person");
INSERT INTO For_Interview1 VALUES ("John Doe", "17:00", "2019-05-01", "In-person");
INSERT INTO For_Interview1 VALUES ("Rachel Smith", "11:00", "2019-05-04", "In-person");
INSERT INTO For_Interview1 VALUES ("Rachel Smith", "13:00", "2019-05-04", "In-person");
INSERT INTO For_Interview1 VALUES ("Rachel Smith", "15:00", "2019-05-04", "In-person");
INSERT INTO For_Interview1 VALUES ("Kevin Knox", "12:00", "2019-05-04", "Phone");
INSERT INTO For_Interview1 VALUES ("Kevin Knox", "13:00", "2019-05-04", "Phone");
INSERT INTO For_Interview1 VALUES ("Joe Burner", "13:00", "2019-05-11", "In-person");
INSERT INTO For_Interview1 VALUES ("Josh Liu", "09:00", "2019-05-05", "Phone");
INSERT INTO For_Interview1 VALUES ("Josh Liu", "10:30", "2019-05-05", "Phone");
INSERT INTO For_Interview1 VALUES ("Tina Fernandez", "10:30", "2019-05-07", "Phone");
INSERT INTO For_Interview1 VALUES ("Miguel Lau", "16:00", "2019-05-08", "In-person");
INSERT INTO For_Interview1 VALUES ("Miguel Lau", "17:00", "2019-05-08", "In-person");
INSERT INTO For_Interview1 VALUES ("Samson Lo", "12:00", "2019-05-06", "Phone");
INSERT INTO For_Interview1 VALUES ("Maurice Cook", "13:00", "2019-05-06", "Phone");
INSERT INTO For_Interview1 VALUES ("Maurice Cook", "14:00", "2019-05-06", "Phone");
INSERT INTO For_Interview1 VALUES ("Trevor Mar", "14:00", "2019-05-12", "In-person");

INSERT INTO For_Interview2(interviewID, interviewerName, time, date, location, jpID) VALUES ("int001", "John Doe", "15:00", "2019-05-01", "8912 Oxford St", "jp001");
INSERT INTO For_Interview2 VALUES ("int002", "John Doe", "17:00", "2019-05-01", "8912 Oxford St", "jp001");
INSERT INTO For_Interview2 VALUES ("int003", "Rachel Smith", "11:00", "2019-05-04", "125 Faith Rd", "jp002");
INSERT INTO For_Interview2 VALUES ("int004", "Rachel Smith", "13:00", "2019-05-04", "125 Faith Rd", "jp002");
INSERT INTO For_Interview2 VALUES ("int005", "Rachel Smith", "15:00", "2019-05-04", "125 Faith Rd", "jp002");
INSERT INTO For_Interview2 VALUES ("int006", "Kevin Knox", "12:00", "2019-05-04", "888 Bingo St", "jp003");
INSERT INTO For_Interview2 VALUES ("int007", "Kevin Knox", "13:00", "2019-05-04", "888 Bingo St", "jp003");
INSERT INTO For_Interview2 VALUES ("int008", "Joe Burner", "13:00", "2019-05-11", "888 Heather Ave", "jp004");
INSERT INTO For_Interview2 VALUES ("int009", "Josh Liu", "09:00", "2019-05-05", "300 E 45th Ave", "jp005");
INSERT INTO For_Interview2 VALUES ("int010", "Josh Liu", "10:30", "2019-05-05", "300 E 45th Ave", "jp005");
INSERT INTO For_Interview2 VALUES ("int011", "Tina Fernandez", "10:30", "2019-05-07", "900 Random Rd", "jp006");
INSERT INTO For_Interview2 VALUES ("int012", "Miguel Lau", "16:00", "2019-05-08", "900 Something St", "jp007");
INSERT INTO For_Interview2 VALUES ("int013", "Miguel Lau", "17:00", "2019-05-08", "900 Something St", "jp007");
INSERT INTO For_Interview2 VALUES ("int014", "Samson Lo", "12:00", "2019-05-06", "144 Water Rd", "jp008");
INSERT INTO For_Interview2 VALUES ("int015", "Maurice Cook", "13:00", "2019-05-06", "144 Water Rd", "jp009");
INSERT INTO For_Interview2 VALUES ("int016", "Maurice Cook", "14:00", "2019-05-06", "144 Water Rd", "jp009");
INSERT INTO For_Interview2 VALUES ("int017", "Trevor Mar", "14:00", "2019-05-12", "66 Pencil Ave", "jp010");

-- For_JobOffer records
INSERT INTO For_JobOffer(offerID, startDate, salary, jpID) VALUES ("o001", "2019-09-01", "$98,000", "jp001");
INSERT INTO For_JobOffer VALUES ("o002", "2019-09-02", "$70,000", "jp002");
INSERT INTO For_JobOffer VALUES ("o003", "2019-09-03", "$90,000", "jp005");
INSERT INTO For_JobOffer VALUES ("o004", "2019-09-04", "$95,000", "jp007");
INSERT INTO For_JobOffer VALUES ("o005", "2019-09-05", "$89,000", "jp009");
INSERT INTO For_JobOffer VALUES ("o006", "2019-09-06", "$60,000", "jp010");

-- Receive records
INSERT INTO Receive(userID, offerID, daysToRespond) VALUES ("a003", "o001", 2);
INSERT INTO Receive VALUES ("a004", "o002", 2);
INSERT INTO Receive VALUES ("a005", "o003", 1);
INSERT INTO Receive VALUES ("a008", "o004", 2);
INSERT INTO Receive VALUES ("a009", "o005", 2);
INSERT INTO Receive VALUES ("a010", "o006", 1);

-- Have_Reference records
INSERT INTO Have_Reference(name, phoneNumber, currentTitle, appID) VALUES ("Rob Bob", "100-000-0000", "Product Manager", 1);
INSERT INTO Have_Reference VALUES ("Jasmine Yoo", "100-000-0001", "Software Developer", 1);
INSERT INTO Have_Reference VALUES ("Rob Bob", "100-000-0000", "Product Manager", 2);
INSERT INTO Have_Reference VALUES ("Jasmine Yoo", "100-000-0001", "Software Developer", 2);
INSERT INTO Have_Reference VALUES ("Rob Bob", "100-000-0000", "Product Manager", 4);
INSERT INTO Have_Reference VALUES ("Jasmine Yoo", "100-000-0001", "Software Developer", 4);
INSERT INTO Have_Reference VALUES ("Rob Bob", "100-000-0000", "Product Manager", 5);
INSERT INTO Have_Reference VALUES ("Jasmine Yoo", "100-000-0001", "Software Developer", 5);
INSERT INTO Have_Reference VALUES ("Rob Bob", "100-000-0000", "Product Manager", 7);
INSERT INTO Have_Reference VALUES ("Jasmine Yoo", "100-000-0001", "Software Developer", 7);
INSERT INTO Have_Reference VALUES ("Rob Bob", "100-000-0000", "Product Manager", 9);
INSERT INTO Have_Reference VALUES ("Jasmine Yoo", "100-000-0001", "Software Developer", 9);
INSERT INTO Have_Reference VALUES ("Rob Bob", "100-000-0000", "Product Manager", 10);
INSERT INTO Have_Reference VALUES ("Jasmine Yoo", "100-000-0001", "Software Developer", 10);
INSERT INTO Have_Reference VALUES ("Teddy Wong", "100-555-5555", "Test Team Manager", 11);
INSERT INTO Have_Reference VALUES ("Michael Sung", "100-666-6666", "Project Manager", 13);
INSERT INTO Have_Reference VALUES ("Richard Rowe", "100-123-1234", "CEO", 13);
INSERT INTO Have_Reference VALUES ("Bob Smith", "100-123-1235", "UX Lead", 15);
INSERT INTO Have_Reference VALUES ("Mandy Love", "100-123-1236", "Software Engineer", 15);
INSERT INTO Have_Reference VALUES ("Bob Smith", "100-123-1235", "UX Lead", 16);
INSERT INTO Have_Reference VALUES ("Mandy Love", "100-123-1236", "Software Engineer", 16);
INSERT INTO Have_Reference VALUES ("Bob Smith", "100-123-1235", "UX Lead", 17);
INSERT INTO Have_Reference VALUES ("Mandy Love", "100-123-1236", "Software Engineer", 17);
INSERT INTO Have_Reference VALUES ("Chris Tucker", "604-111-2131", "Firmware Manager", 20);
INSERT INTO Have_Reference VALUES ("Ryan Howard", "604-111-2132", "Associate QA Engineer", 21);
INSERT INTO Have_Reference VALUES ("Michae Scott", "604-111-2133", "Branch Manager", 21);
INSERT INTO Have_Reference VALUES ("Jim Halpert", "604-111-2134", "Software Developer", 23);
INSERT INTO Have_Reference VALUES ("Dwight Schrute", "604-111-2135", "Software Test Developer", 25);
INSERT INTO Have_Reference VALUES ("Erin Angela", "604-111-2136", "Firmware Manager", 27);
INSERT INTO Have_Reference VALUES ("Kevin Malone", "604-111-2137", "QA Engineer", 27);

-- To see the table records (placeholder for now)
/*SELECT * FROM Applicant;
SELECT * FROM Employer1;
SELECT * FROM Employer2;
SELECT * FROM JobPosting1;
SELECT * FROM JobPosting3;
SELECT * FROM JobPosting4;
SELECT * FROM Post;
SELECT * FROM Participate_Interview1;
SELECT * FROM Participate_Interview2;
SELECT * FROM For_Interview1;
SELECT * FROM For_Interview2;
SELECT * FROM For_JobOffer;
SELECT * FROM Post;
SELECT * FROM ApplyTo_Application;
SELECT * FROM Create_Application;
SELECT * FROM Have_Reference;
SELECT * FROM Receive;
*/