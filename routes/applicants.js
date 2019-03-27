module.exports = {
    getAllApplicants: (req, res) => {
         let query = "SELECT * FROM Applicant ORDER BY userID"; // query database to get all the players

        // execute query
        db.query(query, (err, result) => {
            if (err) {
                res.redirect('/');
            }
            res.render('allApplicants.ejs', {
                title: "View applicants"
                ,applicants: result
            });
        });
    },
};