const fs = require('fs');

module.exports = {
    addPlayerPage: (req, res) => {
        res.render('add-applicant.ejs', {
            title: "Welcome to Job Posting | Add a new applicant"
            , message: ''
        });
    },
    addPlayer: (req, res) => {
        // if (!req.files) {
        //     return res.status(400).send("No files were uploaded.");
        // }

        let message = '';
        let userID = req.body.userID;
        let name = req.body.user_name;
        let password = req.body.password;
        let currentlyEmployed = req.body.currentlyEmployed;
        let phoneNumber = req.body.phoneNumber;
        let address = req.body.address;
        // let image_name = uploadedFile.name;
        // let fileExtension = uploadedFile.mimetype.split('/')[1];
        // image_name = username + '.' + fileExtension;

        let usernameQuery = "SELECT * FROM Applicant WHERE userID = '" + userID + "'";

        // send the player's details to the database
        let query = "INSERT INTO Applicant (userID, name, password, currentlyEmployed, phoneNumber, address) VALUES ('" +
            userID + "', '" + name + "', '" + password + "', '" + currentlyEmployed + "', '" + phoneNumber + "', '" + address + "')";
        db.query(query, (err, result) => {
            if (err) {
                return res.status(500).send(err);
            }
            res.redirect('/');
        });
    },
    getUpdateApplicantPage: (req, res) => {
        let id = req.params.id;
        let query = "SELECT * FROM Applicant a WHERE a.userID = '" + id + "'";
        db.query(query, (err, result) => {
            if (err) {
                return res.status(500).send(err);
            }
            //result[0] contains the current resume and coverletter for the user
            res.render('update-applicant.ejs', {
                title: "Update Applicant"
                , applicant: result[0]
                , message: ''
            });
        });

    },
    updateApplicant: (req, res) => {
        let userid = req.params.id;
        let name = req.body.name;
        let password = req.body.password;
        let currentlyEmployed = req.body.currentlyEmployed;
        let phoneNumber = req.body.phoneNumber;
        let address = req.body.address;
        let query = "Update Applicants set name = '" + name +
            "', password = '" + password +
            "', currentlyEmployed = '" + currentlyEmployed +
            "', phoneNumber = '" + phoneNumber +
            "', address = '" + address +
            "'WHERE userID = '" + userid + "'";

        db.query(query, (err, result) => {
            if (err) {
                return res.status(500).send(err);
            }
            res.redirect('/');
        });
    },
    editPlayerPage: (req, res) => {
        let playerId = req.params.id;
        let query = "SELECT * FROM `players` WHERE id = '" + playerId + "' ";
        db.query(query, (err, result) => {
            if (err) {
                return res.status(500).send(err);
            }
            res.render('edit-player.ejs', {
                title: "Edit  Player"
                , player: result[0]
                , message: ''
            });
        });
    },
    editPlayer: (req, res) => {
        let playerId = req.params.id;
        let first_name = req.body.first_name;
        let last_name = req.body.last_name;
        let position = req.body.position;
        let number = req.body.number;

        let query = "UPDATE `players` SET `first_name` = '" + first_name + "', `last_name` = '" + last_name + "', `position` = '" + position + "', `number` = '" + number + "' WHERE `players`.`id` = '" + playerId + "'";
        db.query(query, (err, result) => {
            if (err) {
                return res.status(500).send(err);
            }
            res.redirect('/');
        });
    },
    deletePlayer: (req, res) => {
        let playerId = req.params.id;
        let getImageQuery = 'SELECT image from `players` WHERE id = "' + playerId + '"';
        let deleteUserQuery = 'DELETE FROM players WHERE id = "' + playerId + '"';

        db.query(getImageQuery, (err, result) => {
            if (err) {
                return res.status(500).send(err);
            }

            let image = result[0].image;

            fs.unlink(`public/assets/img/${image}`, (err) => {
                if (err) {
                    return res.status(500).send(err);
                }
                db.query(deleteUserQuery, (err, result) => {
                    if (err) {
                        return res.status(500).send(err);
                    }
                    res.redirect('/');
                });
            });
        });
    }
};