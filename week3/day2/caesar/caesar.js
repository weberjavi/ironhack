function caesarCipher (message) {

   return message.split("").map(function(character){
      return character.charCodeAt() - 3;
  }).map(function(charEncr){
    charEncr.fromCharCode();
  });//;
}

var encrypted = caesarCipher("brutus");

console.log(encrypted);
//=> "_orqrp"