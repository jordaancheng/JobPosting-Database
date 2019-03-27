module.exports = {
    getApplicantLoginPage: (req, res) => {
        res.render('applicantLogin.ejs',{
            title: "Welcome to Job Posting", message:''
        });
    },

    applicantLogin: (req, res) => {
        let name = req.body.name;
        let password = req.body.password;
        console.log(name);
        console.log(password);
        let query = "SELECT userID FROM Applicant Where name = '"+name+"' AND password= '" + password +"'";

        db.query(query, (err, result) =>{
            if (err) {
                res.redirect('/applicant');
            }else{
                console.log(result[0].userID);
                res.redirect('/applicant/'+result[0].userID+'/')
            }
        });
    },
    getEmployerLoginPage: (req, res) => {
        res.render('applicantLogin.ejs',{
            title: "Welcome to Job Posting", message:''
        });
    },

    employerLogin: (req, res) => {
        let name = req.body.name;
        let password = req.body.password;
        console.log(name);
        console.log(password);
        let query = "SELECT userID FROM Employer1 e1, Employer2 e2 Where e2.name = '"+name
        +"' AND e1.name = e2.name AND e1.password= '" + password +"'";
        console.log(query);
        db.query(query, (err, result) =>{
            if (err) {
                res.redirect('/employer');
            }else{
                res.redirect('/employer/'+result[0].userID+'/')
            }
        });
    },
};