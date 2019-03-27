module.exports = {

    getApplicantPage: (req, res) => {
        let id = req.params.id;
        let query="SELECT j4.jpid, j4.title, j4.company, j3.numberOfPositions, j4.deadline FROM JobPosting4 j4,"+
            "JobPosting3 j3 WHERE j4.requirements = j3.requirements AND j4.deadline >= CURDATE()";
        db.query(query, (err, result) =>{
            if(err){
                return res.status(500).send(err);
            }
            //result contains list of job postings to be displayed
            res.render(/*todo by front end*/);
        });
        
    },

    getPostingDetailsPage: (req, res) => {
        let id = req.params.id;
        let jpid = req.params.jpid;
        let query = "SELECT * FROM JobPosting4 j4, JobPosting1 j1, JobPosting3 j3 WHERE j4.company = j1.company AND j4.requirements = j3.requirements AND j4.jpID = '"+jpid+"'";

        db.query(query, (err, result) =>{
            if (err) {
                return res.status(500).send(err);
            }
            //result contains list of job postings to be displayed
            res.render(/*todo by front end*/);
        });
    },

    getApplicationsPage: (req, res) => {
        let id = req.params.id;
        let query="SELECT * FROM Create_Application ca WHERE ca.userID = '"+id+"'";
            db.query(query, (err, result) =>{
                if(err){
                    return res.status(500).send(err);
                }
                //result contains list of job postings to be displayed
                res.render(/*todo by front end*/);
            });
    },

    getSelectAppPage: (req, res) => {
        let id = req.params.id;
        let query="SELECT * FROM Create_Application ca WHERE ca.userID = '"+id+"'";
            db.query(query, (err, result) =>{
                if(err){
                    return res.status(500).send(err);
                }
                //result contains list of job postings to be displayed
                res.render(/*todo by front end*/);
            });
    },

    getReferencePage: (req, res) => {
        let id = req.params.id;
        let appid = req.params.appid;
        let query = "SELECT * FROM Have_Reference hr WHERE hr.appID = '"+ appid +"'";

        db.query(query, (err, result) =>{
            if (err) {
                return res.status(500).send(err);
            }
            //result contains list of job postings to be displayed
            res.render(/*todo by front end*/);
        });
    },
    
    getInterviewPage: (req, res) => {
        let id = req.params.id;
        let ph = req.params.ph;
        let query="SELECT * FROM Participate_Interview2 pi WHERE pi.userID = '" + id +
            "' AND pi.date >= CURDATE() ORDER BY pi.date";
            db.query(query, (err, result) =>{
                if(err){
                    return res.status(500).send(err);
                }
                //result contains list of job postings to be displayed
                res.render(/*todo by front end*/);
            });
    },
};