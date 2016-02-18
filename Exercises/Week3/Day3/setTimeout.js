//Método en Ruby que hace esperar los segundos que quieras
// sleep(10, function(){
//   console.log('Its been 10 seconds.');
// });

//Método en JS que con el que indicas los segundo que quieres que espere
// function time(){
//   console.log('Ahhhhhhh!');
// }
// setTimeout(time, 2000);

//////////////////////////////////////////
//Devuelve started y luego después de los segundos elegido "after ten"

// function sleep(time, fn){

//   setTimeout(fn, time*1000);
// }

// console.log('Started');

// function afterTen(){
//   console.log('afeter ten');
// }

// sleep(10, afterTen);

//////////////////////////////////////////

function sleep(time, fn){

  setTimeout(function(){
    fn(time);
  }, time*1000);
}

console.log('Started');

function afterTime(time){
  console.log('It was ' + time + ' seconds');
}

sleep(10, afterTime);


//////////////////////////////////////////

function sleep(time, fn){

  setTimeout(function(){
    fn(time);
  }, time*1000);
}

console.log('Started');


sleep(2, function)
function afterTime(time){
  console.log('It was ' + time + ' seconds');
}

sleep(10, afterTime);


//////////////////////////
//CALLBACK!!!!!

function readFromFile(path, callback) {
  console.log('Reading from file path' + path);
  setTimeout(function() {
    callback('Simulated result');
  }, 2000);
}

function readAndWait(path, seconds, callback) {
  console.log('Gonna read from ' + path);
  console.log('and wait ' + seconds + 's');
  readFromFile(path, function(result) {
    setTimeout(function() {
      callback(result);
    }, seconds * 1000)
  })
}

readAndWait('./mitexto.txt', 4, function(result) {
  console.log('Result: ' + result);
})