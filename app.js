//app.js
const express = require('express');
const fileUpload = require('express-fileupload');
const bodyParser = require('body-parser');
const mysql = require('mysql');
const path = require('path');
const app = express();

const {getApplicantLoginPage,applicantLogin,getEmployerLoginPage,employerLogin} = require('./routes/login');
const {getUpdateApplicantPage,updateApplicant,getUpdateReferencePage,updateReference} = require('./routes/updateApplicant');
const {getfilterIndustryPage,getfilterCompanyPage,getfilterReferencesPage} = require('./routes/filter');
const {getApplicantPage,getPostingDetailsPage,getApplicationsPage,getReferencePage,getInterviewPage,getSelectAppPage} = require('./routes/generalApplicantPages');
const {getCreateApplicationPage,createApplication,apply,getAddReferencePage,addReference} = require('./routes/addApplicant');
const {deleteApplication,deleteReference,} = require('./routes/deleteApplicant');
const {getEmployerPage,getEditPostingPage,editPosting,getPostingApplicationPage} = require('./routes/generalEmployer');

const port = 2000;

const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'root',
  database: 'job_posting'
});
connection.connect((err) => {
  if (err) throw err;
  console.log('Connected!');
});
global.db = connection;

app.set('port', process.env.port || port); // set express to use this port
app.set('views', __dirname + '/views'); // set express to look in this folder to render our view
app.set('view engine', 'ejs'); // configure template engine
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json()); // parse form data client
app.use(express.static(path.join(__dirname, 'public'))); // configure express to use public folder

app.get('/applicant', getApplicantLoginPage);
app.post('/applicant', applicantLogin);
app.get('/applicant/:id', getApplicantPage);
app.get('/applicant/:id/update', getUpdateApplicantPage);
app.post('/applicant/:id/update', updateApplicant);
app.get('/applicant/:id/filterIndustry/:industry', getfilterIndustryPage);
app.get('/applicant/:id/filterCompany/:company', getfilterCompanyPage);
app.get('/applicant/:id/posting/:jpid', getPostingDetailsPage);
app.get('/applicant/:id/application', getApplicationsPage);
app.get('/applicant/:id/createApplication/', getCreateApplicationPage);
app.post('/applicant/:id/createApplication/', createApplication);
app.get('/applicant/:id/apply/:jpid/application/:appid', apply);
app.get('/applicant/:id/apply/:jpid', getSelectAppPage);
app.get('/applicant/:id/deleteApplication/:appID', deleteApplication);
app.get('/applicant/:id/application/:appid/reference', getReferencePage);
app.get('/applicant/:id/application/:appid/addReference/', getAddReferencePage);
app.get('/applicant/:id/application/:appid/updateReference/:pn', getUpdateReferencePage);
app.post('/applicant/:id/application/:appid/updateReference/:pn', updateReference);
app.post('/applicant/:id/application/:appid/addReference/', addReference);
app.get('/applicant/:id/application/:appid/deleteReference/:pn', deleteReference);
app.get('/applicant/:id/interview', getInterviewPage);

app.get('/employer',getEmployerLoginPage);
app.post('/employer',employerLogin);
app.get('/employer/:id', getEmployerPage);
app.get('/employer/:id/posting/:jpid/filterReferences', getfilterReferencesPage);
app.get('/employer/:id/posting/:jpid', getPostingApplicationPage);
app.get('/employer/:id/editPosting/:jpid', getEditPostingPage);
app.post('/employer/:id/editPosting/:jpid', editPosting);

// set the app to listen on the port
app.listen(port, () => {
  console.log(`Server running on port: ${port}`);
});