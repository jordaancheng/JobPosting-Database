Select * From JobPosting4;

Select j4.title, j4.company, j3.numberOfPositions
From JobPosting4 j4, JobPosting1 j1, JobPosting3 j3
Where j4.company = j1.company AND j4.requirements =
j3.requirements AND j1.industry = "input from user";

Select j4.title, j4.company, j1.industry, 
j3.numberOfPositions, j4.description, j4.requirements
From JobPosting4 j4, JobPosting1 j1, JobPosting3 j3
Where j4.company = j1.company AND j4.requirements =
j3.requirements AND j4.jpID = "input from user";

Select interviewerName
