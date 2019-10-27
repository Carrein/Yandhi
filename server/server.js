const express = require("express");
const app = express();
const port = process.env.PORT || 5000;

// console.log that your server is up and running
app.listen(port, () => console.log(`Listening on port ${port}`));
var bodyParser = require("body-parser");

// parse application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: false }));
// parse application/json
app.use(bodyParser.json());

// create a GET route
app.get("/express_backend", (req, res) => {
  res.send({ express: "YOUR EXPRESS BACKEND IS CONNECTED TO REACT" });
});

app.post("/post", (req, res) => {
  const form = JSON.parse(JSON.stringify(req.body));
  var regexphi = new RegExp(".*hi.*");
  var regexphello = new RegExp(".*hello.*");
  var regexpmorning = new RegExp(".*morning.*");

  var regexpsick = new RegExp(".*sick.*");
  var regexpsymptoms = new RegExp(".*symptomp.*");

  var regexpnew = new RegExp(".*new.*");
  var regexppresciption = new RegExp(".*presciption.*");
  var regexpupdate = new RegExp(".*update.*");
  var regexpcare = new RegExp(".*care.*");
  var regexpplan = new RegExp(".*plan.*");

  var regexpthank = new RegExp(".*thank.*");
  var regexpappreciate = new RegExp(".*appreciate.*");

  if (
    regexphi.test(form.message) ||
    regexphello.test(form.message) ||
    regexpmorning.test(form.message)
  ) {
    res.send("Hello how are you today?");
  }

  if (regexpsick.test(form.message) || regexpsymptoms.test(form.message)) {
    res.send("Okay, can you describe your symptomps?");
  }

  if (
    regexpnew.test(form.message) ||
    regexppresciption.test(form.message) ||
    regexpupdate.test(form.message) ||
    regexpcare.test(form.message) ||
    regexpplan.test(form.message)
  ) {
    res.send("Alright, I'll give update your CarePlan - hold on.");
    setTimeout(function() {
      res.send(
        "Okay, I have updated your CarePlan with regards to your current readings.You will be able to access them from Yandhi's home page."
      );
    }, 2000);
  }

  if (regexpthank.test(form.message) || regexpappreciate.test(form.message)) {
    res.send("No problem and have a good day!");
  }
});
