//Final diapos 21
//Creo un objeto y lo instancio
// var Car = function(){};
// var car = new Car("Megane", "Brrrrrummmm");

// //s
// var Car = function(model, noise){
//   this.model = model;
//   this.noise = noise;
//   //pones this para que sea accesible desde fuera
//   this.num_wheels = 4;

//   this.makeNoise = function(){
//     console.log(this.noise + "!!!")

//   }
// }
// Car.makeNoise()


//Creación de case constructora Car con New
var Car = function(model, noise){
  //Atributos con this para que sean visibles desde fuera de la función
  this.model = model;
  this.noise = noise;
  //pones this para que sea accesible desde fuera
  this.num_wheels = 4;
  //Aquí imprimo
  console.log('Just created a ' + model)
  }

Car.prototype.makeNoise = function(){
  console.log(this.noise)
}

//El modelo y el ruido son parámetros que le paso al coche
var tesla = new Car('Tesla', 'fiiiii');
tesla.makeNoise();



//////////////////////////////////////////
//En esta función no hace falta generar el .new

var baseCarBuilder = function(model){
}

var carBuilder = function(model, noise){
  var that = baseCarBuilder(model);

  that.model = model;
  that.noise = noise;

  return that;

}
var ferrari = carBuilder('Ferrari', 'Brum');



///////////////////////////////////////////

//En esta función no hace falta generar el .new
var Car = function(model){
  var that = [];

  that.model = model;
  that.sayName = function(){
    console.log(that.model);
  }
  return that;
}
var tesla = new Car ('Tesla');
tesla.sayName();



/////////////////////////////////////////

//Diferentes maneras de llamar a los métodos

'use strict';

var bar = 'hi';

var printBar = function() {
  console.log(this.bar);
}

var test = {
  bar: 'yo',
  foo: printBar
}

new test.foo();
test.foo();

delete test.bar;
test.foo();
printBar();
