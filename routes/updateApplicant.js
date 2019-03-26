module.exports = {
    getUpdateApplicantPage: (req, res) => {
        let id = req.params.id;
        let query="SELECT ca.resume, ca.coverLetter FROM Create_Application ca WHERE ca.userID = '"+ id + "'";
        db.query(query, (err, result) =>{
            if(err){
                return res.status(500).send(err);
            }
            //result[0] contains the current resume and coverletter for the user
            res.render(/*todo by front end*/)
        });
        
    },

    updateApplicant: (req, res) => {
        let id = req.params.id;
        let coverLetter = req.body.coverLetter;
        let resume = req.body.resume;
        let query = "Update Create_Application ca set ca.resume = '" + resume + 
            "', ca.coverLetter = '" + coverLetter +"'WHERE ca.userID = '"+id + "'";

        db.query(query, (err, result) =>{
            if (err) {
                return res.status(500).send(err);
            }
            res.redirect('/applicant/'+id+'/update')
        });
    },
    getUpdateReferencePage: (req, res) => {
        let id = req.params.id;
        let ph = req.params.ph;
        let query="SELECT hr.phoneNumber, hr.currentTitle, hr.name FROM Have_Reference hr WHERE hr.appID = '"
            + appid + "' AND hr.phoneNumber = '"+ ph + "'";
        res.render(/*todo by front end*/)
    },

    updateReference: (req, res) => {
        let id = req.params.id;
        let ph = req.params.ph;
        let appid = req.params.appid;
        let phoneNumber = req.body.phoneNumber;
        let currentTitle = req.body.currentTitle;
        let name = req.body.name;
        let query = "Update Have_Reference hr set hr.phoneNumber = '" + phoneNumber + "', hr.currentTitle = '" + 
            currentTitle +"', hr.name = '" + name +"'WHERE hr.appID = '"+ appid + "' AND hr.phoneNumber = '"+ ph + "'";

        db.query(query, (err, result) =>{
            if (err) {
                return res.status(500).send(err);
            }
            res.redirect('/applicant/'+id+'/application/'+appid+'/updateReference/'+phoneNumber)
        });
    },
};