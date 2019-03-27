module.exports = {
    deleteApplication: (req, res) => {
        let id = req.params.id;
        let appid = req.params.appid;
        let query = "Delete from Create_Application where appID = '"+ appid + "'";
        console.log(query);

        db.beginTransaction(function(err) {
            if (err) { throw err; }
            db.query(query, (err, result) =>{
                if (err) {
                    return res.status(500).send(err);
                }
                console.log(result);
                db.commit(function(err) {
                    if (err) { 
                        connection.rollback(function() {
                        throw err;
                        });
                    }
                });
                
            });            
        });
        res.redirect('/applicant/'+id+'/application/')
    },

    deleteReference: (req, res) => {
        let id = req.params.id;
        let appid = req.params.appid;
        let pn = req.params.pn;

        let query = "Delete from Have_Reference where phoneNumber = '"+pn+"' AND appID = '"+appid+"'"; 
        

        db.query(query, (err, result) =>{
            if (err) {
                return res.status(500).send(err);
            }else{
                res.redirect('/applicant/'+id+'/application/'+appid+'/reference/')
            }
            
        });
    },
};