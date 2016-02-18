var simplecached = require("simplecached");

// var options = {
//   port: 11312, 
//   host: "127.0.0.1"
// };

var PORT = 11312;

var server = new simplecached.Server(PORT, function(error, result){
  console.log("server started...")
});