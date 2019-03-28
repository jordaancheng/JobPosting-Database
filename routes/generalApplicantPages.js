module.exports = {

    getApplicantPage: (req, res) => {
        let id = req.params.id;
        let query="SELECT * FROM JobPosting4 j4,"+
            "JobPosting3 j3 WHERE j4.requirements = j3.requirements AND j4.deadline >= CURDATE()";

        db.query(query, (err, result) =>{
            if(err){
                return res.status(500).send(err);
            }else{
                res.render('index.ejs', {
                    title: "Welcome to Job Posting | View postings"
                    ,postings: result, id:id
                });
            }
        });
    },

    getPostingDetailsPage: (req, res) => {
        let id = req.params.id;
        let jpid = req.params.jpid;
        let query = "SELECT * FROM JobPosting4 j4, JobPosting1 j1, JobPosting3 j3 WHERE j4.company = j1.company AND j4.requirements = j3.requirements AND j4.jpID = '"+jpid+"'";

        db.query(query, (err, result) =>{
            if (err) {
                return res.status(500).send(err);
            }else{
                //result contains list of job postings to be displayed
                    res.render('postingDetails.ejs', {
                        title: "Welcome to Job Posting | View Job Posting Details"
                        ,player: result[0]
                    });
                }
        });
    },

    getApplicationsPage: (req, res) => {
        let id = req.params.id;
        let query="SELECT * FROM Create_Application ca WHERE ca.userID = '"+id+"'";
            db.query(query, (err, result) =>{
                if(err){
                    return res.status(500).send(err);
                }else{
                //result contains list of job postings to be displayed
                    res.render('allApplications.ejs', {
                        title: "Welcome to Job Posting | View Application"
                        ,postings: result
                    });
                }
            });
    },

    getPopularPostingsPage: (req, res) => {
        let id = req.params.id;
        let query= "Select j4.title, j4.company, j1.industry, j3.numberOfPositions, j4.description, j4.requirements From JobPosting4 j4, JobPosting1 j1, JobPosting3 j3 Where j4.company = j1.company AND j4.requirements = j3.requirements AND j4.jpID in (Select jp4.jpID from jobPosting4 jp4 where not exists (Select a.userID from Applicant a where not exists (Select ca.userID from ApplyTo_Application ata, Create_Application ca where a.userID = ca.userID and ca.appID = ata.appID and ata.jpid = jp4.jpid)))";
            db.query(query, (err, result) =>{
                if(err){
                    return res.status(500).send(err);
                }else{
                //result contains list of job postings to be displayed
                    res.render('popularPostings.ejs', {
                        title: "Welcome to Job Posting | View Popular Postings"
                        ,postings: result, id:id
                    });
                }
            });
    },

    getSelectAppPage: (req, res) => {
        let id = req.params.id;
        let jpid = req.params.jpid;
        let query="SELECT * FROM Create_Application ca WHERE ca.userID = '"+id+"' AND ca.appID NOT IN( SELECT ata.appId "
            +"FROM ApplyTo_Application ata)";
            db.query(query, (err, result) =>{
                if(err){
                    return res.status(500).send(err);
                }else{
                    //result contains list of job postings to be displayed
                        res.render('selectApplication.ejs', {
                            title: "Welcome to Job Posting | View Application"
                            ,postings: result
                        });
                    }
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
            res.render('referenceIndex.ejs', {
                title: "Welcome to Job Posting | View Application"
                ,postings: result
            });
        });
    },
    
    getInterviewPage: (req, res) => {
        let id = req.params.id;
        let pn = req.params.ph;
        let query="SELECT * FROM Participate_Interview2 pi WHERE pi.userID = '" + id +
            "' AND pi.date >= CURDATE() ORDER BY pi.date";
            db.query(query, (err, result) =>{
                if(err){
                    return res.status(500).send(err);
                }else{
                    res.render('interviewIndex.ejs', {
                        title: "Welcome to Job Posting | View Interview"
                        ,postings: result
                    });
                }
            });
    },

    redirect: (req, res) => {
        let id = req.params.id;
        res.redirect('/applicant/'+id+'/application/add/');
    },
};