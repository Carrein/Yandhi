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

app.get("/authorize", async (req, res) => {
  const credentials = {
    client: {
      id: "80b5c1f2-23a1-4f67-b4eb-59c549d0039d",
      secret: "oA0qJ6yb6vnaArs/tJ0pi/O.bgyAZ=n9"
    },
    auth: {
      tokenHost:
        "https://login.microsoftonline.com/79fe009c-79e0-4bc9-baec-a76d3145bde5/oauth2/v2.0/token"
    }
  };

  const oauth2 = require("simple-oauth2").create(credentials);
  const tokenConfig = {
    scope: "<scope>"
  };

  const httpOptions = {};

  try {
    const result = await oauth2.clientCredentials.getToken(
      tokenConfig,
      httpOptions
    );
    const accessToken = oauth2.accessToken.create(result);
  } catch (error) {
    console.log("Access Token error", error.message);
  }
});

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
    res.send("Okay, could you describe your symptoms?");
  }

  if (
    regexpnew.test(form.message) ||
    regexppresciption.test(form.message) ||
    regexpupdate.test(form.message) ||
    regexpcare.test(form.message) ||
    regexpplan.test(form.message)
  ) {
    res.send("Alright, I'll give update your CarePlan - hold on.");
    res.send(
      "Okay, I have updated your CarePlan with regards to your current readings.You will be able to access them from Yandhi's home page."
    );
  }

  if (regexpthank.test(form.message) || regexpappreciate.test(form.message)) {
    res.send("No problem and have a good day!");
  }

  res.send("Invalid message, sorry!");
});
