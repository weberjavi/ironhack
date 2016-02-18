// var exampleArray = [2, -5, 10,  5,  4, -10,  0 ];

// var result = [];

// function sumZero(array){
//   for (var i = 0; i < exampleArray.length ; i++) {
//     for (var n = 0; n < exampleArray.length && i >= n; n++) {
//       if (exampleArray[i] + exampleArray[n] == 0) { 
//         result.push("(" + exampleArray[i] + "," + exampleArray[n] + ")");
//       } 
//     }
//   }
// };

// sumZero(exampleArray);
// console.log(result)

//Con reduce
//Reduce siempre tiene que devolver un valor

// var result = arrayExample.reduce(function (result, x, i) {
//   return arrayExample.reduce(function(aux, y, j) {
//     return x + y === 0
//       ? aux.concat('(' + i + ',' + j + ')')
//       : aux
//   }, result)
// }, [])


// var sample_array = [2, -5, 10, 5, 4, -10, 0 ]
// function process(data){
//     var positions = [];
//     data.forEach (function (a, i) {
//         data.forEach (function (b, j) {
//             if (a + b === 0) {positions.push ( i +","+ j )}
//         });
//     });
//     console.log("You can sum these pairs of numbers and get zero:" + positions);
//     console.log(positions);
// }
// process(sample_array);


//Exercice
// Write a function that receives a string of numbers separated by colons. Have the function turn that string into an array of numbers and 
// calculate their average.

 var numbers = '80:70:90:100';
 //=> 85



 function averageColon(string){
  var numberArray = string.split(":");
//La función .reduce requiere como parámetro una función [callBack function] cuyos parámetros son
//
  return numberArray.reduce(function(result, string, i){
    return result + parseInt(string)
  }, 0)/numberArray.length
 }

  console.log(averageColon(numbers))