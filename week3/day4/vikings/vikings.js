///////////////
// VIKINGS
///////////////

var Viking = function(name, age){
  // var weapons = {
  //   sword: 3, 
  //   axe: 4, 
  //   stick: 2, 
  //   fist: 1
  // }
  //i = 
  //this.weapon = 
  this.name = name;
  this.age = age;
  this.health = Math.floor(Math.random() * (100 - 70) + 70 - (age/25));

  this.strength = Math.floor(Math.random() * (15 - 7) + 7 - (age/50));
    

  this.attack =  function(enemy){
    return enemy.health -= this.strength;
  }
};


/// Barco vikingo

var vik = [
  olaf = new Viking("Olaf", 27),  //OLAF
  erik = new Viking("Erik", 45),  //ERIK
  valeria = new Viking("Valeria", 33),  //VALERIA
  gudrun = new Viking("Gudrun", 38),  //GUDRUN
  hilda = new Viking("Hilda", 21),  //HILDA
  torunn = new Viking("Torunn", 60)  //VALERIA
]

//console.log(vik)

///////////////////
//   PIT
//////////////////

var TrainingPit = function(viking_fighters, max_turns){
  var max_turns = max_turns;
  this.fight = function(viking1, viking2){
    console.log("Let's fight!!!")
    for(max_turns; max_turns > 0; max_turns--){
      if (viking1.health <= viking2.strength) {
        console.log("Ok " + viking1.name + " it's enough, you look very tired.\n=> " + viking1.name + "'s life " + viking1.health + "// " + viking2.name + "'s life " + viking2.health + ".");
        return
      } 
      else if(viking2.health <= viking1.strength) {
        console.log("Ok " + viking2.name + " it's enough, you look very tired.\n=> " + viking1.name + "'s life " + viking1.health + "// " + viking2.name + "'s life " + viking2.health + ".");
        return
      }
      else{
        console.log("=> " + max_turns + "attacks left.")
        viking1.attack(viking2);
        viking2.attack(viking1);
      }
    }
  }
}

//var training = new TrainingPit(vik,10);
//training.fight(vik.erik, vik.torunn);


///////////////////
//  SAXONS
///////////////////

var Saxon = function(){
  this.strength = Math.floor(Math.random() * (5 - 3) + 3);
  this.health = Math.floor(Math.random() * (40 - 20) + 20);

  this.attack =  function(enemy){
    return enemy.health -= this.strength;
  }  
}

//// Aldea sajona

function create_saxons(number_of_saxons){
    var mob = [];
    for(i = 0;i < number_of_saxons; i++){
      mob.push(new Saxon());
    }
    return mob;
}

 var saxons_mob = create_saxons(9);
 //console.log(saxons_mob);



///////////////////
/// BATALLAAAAAAAAAA!!!
//////////////////


var Battle = function(vikings, saxons){
  this.vikings = vikings;
  this.saxons = saxons;

  var saxon_deads = [];
  var viking_deads = [];

  var random_viking = Math.floor((Math.random() * vik.length) + 1) - 1;
  var random_saxon = Math.floor((Math.random() * saxons_mob.length) + 1) - 1;


}

console.log(vik[random_viking]);
console.log(saxons_mob[random_saxon]);









 