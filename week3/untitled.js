var simplecached = require("simplecached");

var options = {
  port: 11312, 
  host: "127.0.0.1"
};

var client = new simplecached.Client(option, function(error){
  console.log("Conected");
})

var server = new simplecached.Server(options.port);



////////////
client.get(key, callback);