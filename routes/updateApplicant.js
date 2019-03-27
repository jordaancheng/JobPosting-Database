const fs = require('fs');

module.exports = {
    getUpdateReferencePage: (req, res) => {
        let appid = req.params.appid;
        let pn = req.params.pn;
        let query = "SELECT * FROM Have_Reference hr WHERE hr.appID = '"
            + appid + "' AND hr.phoneNumber = '" + pn + "'";
        console.log(query)
        db.query(query, (err, result) => {
            if (err) {
                return res.status(500).send(err);
            } else {
                res.render('updateReference.ejs', {
                    title: "Welcome to Job Posting | Update Reference"
                    , player: result[0]
                });
                console.log(result[0].name)
            }
        });
    },

    updateReference: (req, res) => {
        let id = req.params.id;
        let pn = req.params.pn;
        let appid = req.params.appid;
        let phoneNumber = req.body.phoneNumber;
        let currentTitle = req.body.currentTitle;
        let name = req.body.name;
        let query = "Update Have_Reference hr set hr.phoneNumber = '" + phoneNumber + "', hr.currentTitle = '" +
            currentTitle + "', hr.name = '" + name + "'WHERE hr.appID = '" + appid + "' AND hr.phoneNumber = '" + pn + "'";
        console.log(query);
        db.beginTransaction(function (err) {
            if (err) { throw err; }
            db.query(query, (err, result) => {
                if (err) {
                    return res.status(500).send(err);
                }
                console.log(result);
                db.commit(function (err) {
                    if (err) {
                        connection.rollback(function () {
                            throw err;
                        });
                    }
                });

            });
        });
        res.redirect('/applicant/' + id + '/application/' + appid + '/reference/')

    },

    getEditApplicationPage: (req, res) => {
        let id = req.params.id;
        let appid = req.params.appid;

        let query = "SELECT * FROM Create_Application ca WHERE ca.appID = '"
            + appid + "' AND ca.userID = '" + id + "'";
        console.log(query)    
        db.query(query, (err, result) => {
            if (err) {
                return res.status(500).send(err);
            }else {
                res.render('updateApplication.ejs', {
                    title: "Welcome to Job Posting | Update Application"
                    , player: result[0]
                });
                console.log(result[0].name)
            }
        });
    },

    editApplication: (req, res) => {
        let id = req.params.id;
        let appid = req.params.appid;
        let resume = req.body.resume;
        let coverLetter = req.body.coverLetter;
        let name = req.body.name;
        let query = "Update Create_Application ca set ca.resume = '" + resume + "', ca.coverLetter = '" +
            coverLetter + "' WHERE ca.appID = '" + appid + "' AND ca.userID = '" + id + "'";
        console.log(query)   
        db.beginTransaction(function (err) {
            if (err) { throw err; }
            db.query(query, (err, result) => {
                if (err) {
                    return res.status(500).send(err);
                }
                console.log(result);
                db.commit(function (err) {
                    if (err) {
                        connection.rollback(function () {
                            throw err;
                        });
                    }
                });

            });
        });
        res.redirect('/applicant/' + id + '/application/')

    },
};