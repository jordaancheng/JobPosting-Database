module.exports = {
    getfilterIndustryPage: (req, res) => {
        let id = req.params.id;
        let industry = req.params.industry;
        let query="SELECT j4.jpid, j4.title, j4.company, j3.numberOfPositions, j4.deadline FROM JobPosting4 j4, JobPosting1 j1, "+
            "JobPosting3 j3 WHERE j4.company = j1.company AND j4.requirements = j3.requirements AND j1.industry = '"
            +industry+ "' AND j4.deadline >= CURDATE()";

        db.query(query, (err, result) =>{
            if(err){
                return res.status(500).send(err);
            }
            //result contains list of job postings to be displayed
            res.render(/*todo by front end*/);
        });
        
    },
    getfilterCompanyPage: (req, res) => {
        let id = req.params.id;
        let company = req.params.company;
        let query="SELECT j4.jpid, j4.title, j4.company, j3.numberOfPositions, j4.deadline FROM JobPosting4 j4,"+
            "JobPosting3 j3 WHERE j4.requirements = j3.requirements AND j4.company = '"
            +company+ "' AND j4.deadline >= CURDATE()";
        db.query(query, (err, result) =>{
            if(err){
                 return res.status(500).send(err);
            }
            //result contains list of job postings to be displayed
            res.render(/*todo by front end*/);
        });
    },

    getfilterReferencesPage: (req, res) => {
        let jpid = req.params.jpid;
        let query= "SELECT distinct ata.appID FROM ApplyTo_Application ata WHERE ata.jpID = '"+jpid+"' AND ata.appID in (SELECT hr.appID FROM Have_Reference hr)";
        db.query(query, (err, result) =>{
            if(err){
                 return res.status(500).send(err);
            }
            //result contains list of job postings to be displayed
            res.render(/*todo by front end*/);
        });
    },

};