module.exports = {

    getEmployerPage: (req, res) => {
        let id = req.params.id;
        let query="SELECT * FROM JobPosting4 j4,"+
            "JobPosting3 j3, Employer2 e WHERE j4.requirements = j3.requirements AND j4.deadline >= CURDATE() AND e.userID = '"+
            id+"' AND j4.company = e.company";

        console.log(query);
        db.query(query, (err, result) =>{
            if(err){
                return res.status(500).send(err);
            }else{
            //result[0] contains the current resume and coverletter for the user
                res.render('index.ejs', {
                    title: "Welcome to Job Posting | View postings"
                    ,postings: result
            });
            }
        });
        
    },

    getEditPostingPage: (req, res) => {
        let id = req.params.id;
        let jpid = req.params.jpid;
        let query= "SELECT jp3.numberOfPositions , jp4.description FROM JobPosting4 jp4, JobPosting3 jp3"+
            "WHERE j4.requirements = j3.requirements AND j4.jpID = '"+ jpid + "'";
            db.query(query, (err, result) =>{
                if(err){
                    return res.status(500).send(err);
                }
                //result[0] contains the current numberOfPositions, and description for the user
                res.render(/*todo by front end*/)
            });
    },

    editPosting: (req, res) => {
        let id = req.params.id;
        let ph = req.params.ph;
        let appid = req.params.appid;
        let phoneNumber = req.body.phoneNumber;
        let currentTitle = req.body.currentTitle;
        let name = req.body.name;
        let query= "UPDATE JobPosting4 jp4, JobPosting3 jp3 SET jp3.numberOfPositions = '"+ numberOfPositions 
            +"', jp4.description = '"+description+"' WHERE j4.requirements = j3.requirements AND j4.jpID = '"+ jpid + "'";

        db.query(query, (err, result) =>{
            if (err) {
                res.redirect('/employer/'+id+'/editPosting/'+jpid)
            }
            res.redirect('/employer/'+id)
        });
    },

    getPostingApplicationPage: (req, res) => {
        let jpid = req.params.jpid;
        let query= "SELECT distinct ata.appID FROM ApplyTo_Application ata WHERE ata.jpID = '"+jpid+"'";
        db.query(query, (err, result) =>{
            if(err){
                 return res.status(500).send(err);
            }
            //result contains list of job postings to be displayed
            res.render(/*todo by front end*/);
        });
    },
};