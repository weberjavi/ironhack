/*
/////////////////

function sleep(seconds, callback_fn){ //Creamos una función que acepte dos parámetros un número y una función
  setTimeout(callback_fn, seconds * 1000) //dentro de ella ejecutamos setTimeout que requiere la función pasada como parámetro que se ejecutará una vez se cumpla el tiempo
}

sleep(3, function() {
  console.log('It’s been 3 seconds.');
});

console.log("hola!!!")


///////////////////////

function sleep2(seconds, callback){
  setTimeout(function(){
    callback(seconds);
  },seconds * 1000)
}

sleep2(3, function(seconds){
  console.log("pasaron" + seconds + " segundos")
})

console.log("hola")

*/



///////////////                                                               ESCRITURA
                                                      // readFromFile();
                                                      // Creo una función para leer de un archivo   ||
function readFromFile(path, callback_fn) {            // requiere un path y una función. El path se ||    
  console.log('Reading from file path' + path);       // imprime. Se ejecuta una función setTimeout ||
  setTimeout(function() {                             // que requiere un número (ms) y la función   || 
    callback_fn('Simulated result');                  // introducida previamente como parám, la eje-||
  }, 2000);                                           // cuta introduciendo como parám. una string  ||
}                                                     //--------------------------------------------||
                                                      // readAndWait();
function readAndWait(path, seconds, callback) {       // Función que requiere un path, un tiempo y  ||
  console.log('Gonna read from ' + path);             // una función. Imprime dos lineas indicando  ||
  console.log('and wait ' + seconds + 's');           // path y tiempo; ejecuta la función readFromFile ||
  readFromFile(path, function(result) {               // 
    setTimeout(function() {
      callback(result);
    }, seconds * 1000)
  })
}

readAndWait('./mitexto.txt', 4, function(result) {
  console.log('Result: ' + result);
})