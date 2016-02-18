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

  this.strength = Math.floor(Math.random() * (35 - 17) + 17 - (age/50));
    

  this.attack =  function(enemy){
    return enemy.health -= this.strength;
  }
};


/// Barco vikingo

var drakar = [
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
  this.strength = Math.floor(Math.random() * (15 - 13) + 13);
  this.health = Math.floor(Math.random() * (60 - 20) + 20);

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

 var saxons_mob = create_saxons(30);
 //console.log(saxons_mob);



///////////////////
/// BATALLAAAAAAAAAA!!!
//////////////////


var BattleField = function(vikings, saxons){
  this.vikings = vikings;
  this.saxons = saxons;

  var saxon_deads = [];
  var viking_deads = [];

  this.battle = function(){

    console.log("the battle begins")

    while (saxons.length !== 0 || vikings.length !== 0){
      var rv = vikings[Math.floor(Math.random() * vikings.length)];
      var rs = saxons[Math.floor(Math.random() * saxons.length)];

      rs.attack(rv);
      rv.attack(rs);

      // if(rs.health <= 0 || rv.health <= 0){
      //   saxon_deads.push(rs);
      //   viking_deads.push(rv);

      //   var i = saxons.indexOf(rs);
      //   saxons.splice(i,1)
      //   console.log("a saxon is dead")
      //   console.log(saxon_deads);
      //   console.log(saxons);


      //   var j = vikings.indexOf(rv);
      //   vikings.splice(j,1)
      //   console.log(rv.name + " is dead")
      //   console.log(viking_deads);
      //   console.log(vikings);

      //   if (saxons.length === 0) {
      //     return console.log("All saxons are dead");
      //   } else if (vikings.length === 0){
      //     return console.log("All vikings are dead");
      //   };

      if(rs.health <= 0){
        saxon_deads.push(rs);

        var i = saxons.indexOf(rs);
        saxons.splice(i,1)
        console.log("a saxon is dead")
        console.log(saxon_deads);
        console.log(saxons);

        if (saxons.length === 0) {
          return console.log("All saxons are dead");
        }

      } else if (rv.health <= 0){
        viking_deads.push(rv);

        var j = vikings.indexOf(rv);
        vikings.splice(j,1);   
        console.log(rv.name + " is dead");  
        console.log(viking_deads);
        console.log(vikings);
        if (vikings.length === 0){
          return console.log("All vikings are dead");
        }
      }
    } 
  }
}



var valhala = new BattleField(drakar, saxons_mob);

valhala.battle();






 