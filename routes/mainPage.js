module.exports = {
    mainPage: (req, res) => {
        let query = "SELECT * FROM Applicant"; // query database to get all the players

        // execute query
        db.query(query, (err, result) => {
            if (err) {
                res.redirect('/');
            }
            res.render('mainPage.ejs', {
                title: "Welcome to the Job Posting Board!"
                ,players: result
            });
        });
    },
};