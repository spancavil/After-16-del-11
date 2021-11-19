const express = require("express");
const morgan = require("morgan");
const handler = require('serve-handler');

var app = express();

app.use(morgan("tiny"));

// Serve the static files from the build folder
app.use(express.static( __dirname + "/build"));

// Redirect all traffic to the index
// Here we use handler to handle properly the api request and api loads (google recaptcha)
app.get("*", function(req, res){
    return handler(req, res)
});
// Listen to port 80
const PORT =  80
app.listen(PORT, ()=>{
    console.log(`Server listen on PORT: ${PORT}`)
});