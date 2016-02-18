var simplecached = require("simplecached");

var options = {
  port: 11312, 
  host: "10.28.31.244"
};

var client = new simplecached.Client(options.port, function(error){
  console.log("Conected");
  var key = "testing";
  var value = "that's the value";
  client.set(key, value, function(error, result){
    console.assert(!error, "Error setting key"); //assert si evalúa a falso imprime y si evalúa positivo imprime
    console.assert(result, "coul not set a key");
    console.log("Yeah, you set this " + result);
    client.get(key, function(error, result){
      console.assert(!error, "Error getting key");
      console.assert(result == value, "Invalid get key");
      console.log("You've get this " + result);
      client.delete(key, function(error, result){
        console.assert(!error, 'Error deleting key');
        console.assert(result, 'Could not delete key');
        console.log('Key deleted!!');
        client.close(function(error){
          console.assert(!error, 'Error closing client');
          console.log("CLIENTE CERRADO");
        });
      });
    });
  });
});



////////////
