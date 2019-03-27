module.exports = {
    getApplicantLoginPage: (req, res) => {
        res.render(/*todo by front end*/)
    },

    applicantLogin: (req, res) => {
        let username = req.body.username;
        let password = req.body.password;
        let query = "SELECT userID FROM 'Applicant' Where username = '"+username+"' AND password= '" + password +"'";

        db.query(query, (err, result) =>{
            if (err) {
                res.redirect('/');
            }
            res.redirect('/applicant/'+result[0])
        });
    },
    getEmployerLoginPage: (req, res) => {
        res.render(/*todo by front end*/)
    },

    employerLogin: (req, res) => {
        let username = req.body.username;
        let password = req.body.password;
        let query = "SELECT userID FROM 'Employer' Where username = '"+username+"' AND password= '" + password +"'";

        db.query(query, (err, result) =>{
            if (err) {
                res.redirect('/');
            }
            res.redirect('/employer/'+result[0])
        });
    },
};