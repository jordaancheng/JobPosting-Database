module.exports = {

    getEmployerPage: (req, res) => {
        let id = req.params.id;
        let query = "SELECT * FROM JobPosting4 j4," +
            "JobPosting3 j3, Employer2 e WHERE j4.requirements = j3.requirements AND j4.deadline >= CURDATE() AND e.userID = '" +
            id + "' AND j4.company = e.company";

        console.log(query);
        db.query(query, (err, result) => {
            if (err) {
                return res.status(500).send(err);
            } else {
                //result[0] contains the current resume and coverletter for the user
                res.render('employerIndex.ejs', {
                    title: "Welcome to Job Posting | View postings"
                    , postings: result
                });
            }
        });

    },

    getEditPostingPage: (req, res) => {
        let id = req.params.id;
        let jpid = req.params.jpid;
        let query = "SELECT jp3.numberOfPositions , jp4.description FROM JobPosting4 jp4, JobPosting3 jp3 " +
            "WHERE jp4.requirements = jp3.requirements AND jp4.jpID = '" + jpid + "'";
        db.query(query, (err, result) => {
            if (err) {
                return res.status(500).send(err);
            } else {
                //result[0] contains the current resume and coverletter for the user
                res.render('editPosting.ejs', {
                    title: "Welcome to Job Posting | Edit Postings"
                    , postings: result
                });
            }
        });
    },

    editPosting: (req, res) => {
        let id = req.params.id;
        let jpid = req.params.jpid;
        let numberOfPositions = req.body.numberOfPositions;
        let description = req.body.description;
        let query = "UPDATE JobPosting4 jp4, JobPosting3 jp3 SET jp3.numberOfPositions = '" + numberOfPositions
            + "', jp4.description = '" + description + "' WHERE jp4.requirements = jp3.requirements AND jp4.jpID = '" + jpid + "'";

        console.log(query)
        db.query(query, (err, result) => {
            if (err) {
                res.redirect('/employer/' + id + '/posting/' + jpid + '/edit/')
            } else {
                res.redirect('/employer/' + id + '/')
            }
        });
    },

    getPostingApplicationPage: (req, res) => {
        let jpid = req.params.jpid;
        let query = "SELECT * FROM Create_Application ca WHERE ca.appID IN (SELECT distinct ata.appID FROM ApplyTo_Application ata WHERE ata.jpID = '" + jpid + "')";
        db.query(query, (err, result) => {
            if (err) {
                return res.status(500).send(err);
            } else {
                //result[0] contains the current resume and coverletter for the user
                res.render('employerApplicationIndex.ejs', {
                    title: "Welcome to Job Posting | View postings"
                    , postings: result
                });
            }
        });
    },
};