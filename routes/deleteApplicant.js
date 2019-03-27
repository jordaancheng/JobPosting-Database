module.exports = {
    deleteApplication: (req, res) => {
        let id = req.params.id;
        let appid = req.params.appid;
        let query = "Delete from Create_Application where app_ID = '"+ appid + "'";

        db.query(query, (err, result) =>{
            if (err) {
                return res.status(500).send(err);
            }
            res.redirect('/applicant/'+id+'/application')
        });
    },

    deleteReference: (req, res) => {
        let id = req.params.id;
        let appid = req.params.appid;
        let pn = req.params.pn;

        let query = "Delete from Have_Reference where phoneNumber = '"+pn+"' AND appID = '"+appid+"'"; 
        

        db.query(query, (err, result) =>{
            if (err) {
                return res.status(500).send(err);
            }
            res.redirect('/applicant/'+id+'/application/'+appid+'/reference')
        });
    },
};