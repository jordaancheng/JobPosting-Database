const fs = require('fs');

module.exports = {
    getUpdateApplicantPage: (req, res) => {
        let id = req.params.id;
        let query="SELECT * FROM Applicant a WHERE a.userID = '"+ id + "'";
        db.query(query, (err, result) =>{
            if(err){
                return res.status(500).send(err);
            }
            //result[0] contains the current resume and coverletter for the user
            res.render('update-applicant.ejs', {
                title: "Update Applicant"
                ,applicant: result[0]
                ,message: ''
            });
        });
        
    },
    updateApplicant: (req, res) => {
        let userID = req.params.id;
        let name = req.body.name;
        let password = req.body.password;
        let currentlyEmployed = req.body.currentlyEmployed;
        let phoneNumber = req.body.phoneNumber;
        let address = req.body.address;
        let query = "Update Applicant a set a.name = '" + name + 
            "', a.password = '" + password +
            "', a.currentlyEmployed = '" + currentlyEmployed +
            "', a.phoneNumber = '" + phoneNumber +
            "', a.address = '" + address +
            "'WHERE a.userID = '"+ userID + "'";

        db.query(query, (err, result) =>{
            if (err) {
                return res.status(500).send(err);
            }
            res.redirect('/all');
        });
    },

    getUpdateReferencePage: (req, res) => {
        let id = req.params.id;
        let ph = req.params.ph;
        let query="SELECT hr.phoneNumber, hr.currentTitle, hr.name FROM Have_Reference hr WHERE hr.appID = '"
            + appid + "' AND hr.phoneNumber = '"+ ph + "'";
            db.query(query, (err, result) =>{
                if(err){
                    return res.status(500).send(err);
                }
                //result[0] contains the current phoneNumber, currentTitle and name for the user
                res.render(/*todo by front end*/)
            });
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