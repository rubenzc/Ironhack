

// result =resultado acumulado
// item sobre el que se itera x
// indice = i = posición del array


var exampleArray = [ 2,-5, 10, 5, 4, -10, 0 ];

function reduce(fn, init)

var result = exampleArray.reduce(function (result, x, i)){
  return exampleArray.reduce(function(aux, y, j)){
    return x + y === 0
    ? aux.concat('('+i+','+j+')')
    //el aux de abajo es que devuelvo array vacío
    :aux
  }, result)
}, [])
//El array justo de arriba es el valor inicial, array vacío
console.log(result)


//Easier version

var exampleArray = [ 2,-5, 10, 5, 4, -10, 0 ];
var result = [];

for (var i = 0; i < exampleArray.length; i++){
  for (var j = 0; j < exampleArray.length; j++){
    if(exampleArray[i] + exampleArray[j] === 0){
      result.push('('+i+','+j+')')
    }
  }
}

console.log(result)


var result = arrayExample.reduce(function (result, x, i) {
  return arrayExample.reduce(function(aux, y, j) {
    return x + y === 0
      ? aux.concat('(' + i + ',' + j + ')')
      : aux
  }, result)
}, [])