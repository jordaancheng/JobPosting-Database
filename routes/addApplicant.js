module.exports = {
    getCreateApplicationPage: (req, res) => {
        res.render('addApplication.ejs', {
            title: "Welcome to Job Posting | Create Applications"
            , message: ""
        });
    },

    createApplication: (req, res) => {
        let id = req.params.id;
        let resume = req.body.resume;
        let coverLetter = req.body.coverLetter;
        let query = "Insert into Create_Application(resume, coverLetter, userID) Values('" + resume + "', '" + coverLetter + "' , '" + id + "')";

        db.query(query, (err, result) => {
            if (err) {
                res.redirect('/applicant/' + id + '/createApplication/');
            }
            res.redirect('/applicant/' + id + '/application/');
        });
    },

    apply: (req, res) => {
        let appid = req.params.appid;
        let jpid = req.params.jpid;
        let query = "Insert into ApplyTo_Application(appID, jpID) Values ('" + appid + "', '" + jpid + "')";

        db.query(query, (err, result) => {
            if (err) {
                return res.status(500).send(err);
            }
            res.redirect('/applicant/' + id);
        });
    },

    getAddReferencePage: (req, res) => {
        res.render('add-reference.ejs', {
            title: "Welcome to Job Posting | Create References"
            , message: ""
        });
    },

    addReference: (req, res) => {
        let id = req.params.id;
        let appid = req.params.appid;
        let name = req.body.name;
        let phoneNumber = req.body.phoneNumber;
        let currentTitle = req.body.currentTitle;
        let query = "Insert into Have_Reference(name, phoneNumber, currentTitle,appID) Values ('" + name +
            "', '" + phoneNumber + "', '" + currentTitle + "', '" + appid + "')";

        db.query(query, (err, result) => {
            if (err) {
                res.redirect('/applicant/' + id + '/application/' + appid + '/addReference/');
            }
        });
        res.redirect('/applicant/' + id + '/application/' + appid + '/reference/');
    },
};