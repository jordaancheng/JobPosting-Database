module.exports = {
    getHomePage: (req, res) => {
        let query = "SELECT * FROM JobPosting4 ORDER BY jpID"; // query database to get all the players

        // execute query
        db.query(query, (err, result) => {
            if (err) {
                res.redirect('/');
            }
            res.render('index.ejs', {
                title: "Welcome to Job Posting | View postings"
                ,postings: result
            });
        });
    },
};