//La manera de crear una "clase" en js es a travésde una función constructora -> constructor
//Se declara una variable (CamelCase) y se crea una función en la que se definirán los parámetros
//los atributos y los métodos que tendrán las distintas estacias que se vayan crando

// var Human = function(name){
//   this.name = name;

//   this.sayHi = function(){
//     console.log("Hi, my name is " + this.name)
//   }
// }

// perico = new Human("Perico");
// perico = new Human("Federico");

//Si queremos que todas las instancias compartan una misma copia de una función 
//se creará esta función con la keyword .prototype

// var Human = function(name){
//   this.name = name; 
// }

// Human.prototype.sayHi = function(){
//     console.log("Hi, my name is " + this.name)
//   }

// /////////////////////

// var Car = function(model, noise){
//   this.model = model;
//   this.noise = noise;
//   wheels = 4; //si eliminamos la keyword this de 

//   this.makeNoise = function(){
//     console.log(this.noise + "!!");
//   }
// }

// big_car = new Car("Camión", "POPO");

// big_car.makeNoise();
// big_car.model;


/////////
//CONSTRUCTOR & FACTORY FUNCTIONS
////////

//CONSTRUCTOR
//




//FACTORY FUNCTION
//

var Car = function(model){
  "use strict";
  //Creamos un objeto vacío
  var that = {};
  //Añadimos elementos al objeto
  that.model = model;
  that.isInstance = function(fn){
    return Car === fn;
  };
  that.sayName = function(){
    console.log(that.model)
  }
  return that
}



///////////////////////////
//  COMPORTAMIENTO DE THIS
//////////////////////////

bar = "hi";

var printBar = function(){
  console.log(this.bar);
}

var test = {
  bar: "yo",
  foo: printBar
}

new test.foo();
//=> undefined
//Devuelve undefined por que al iniciarlo con new this devuelve un objeto vacío

test.foo();
//=> "yo"
//Devuelve "yo" por que está accediendo a la variable dentro de la variable test

delete test.bar; //Borra el key:value bar:"yo" dentro de la variable test


test.foo();
//=> undefined
//Devuelve undefined por que está intentando acceder a bar dentro de test pero ya no existe

printBar();
//=> "hi"
//Devuelve "hi" por que al no tener definido un valor para bar dentro de su scope accede al valor de la variable bar en el scope general













