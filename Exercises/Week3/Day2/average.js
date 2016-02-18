
//Me
var numbers = '80:70:90:100';
averageColon(numbers);

function averageColon(){
  numbers = numbers.split(':');

  var i;
  for (i = 0; i < numbers.length; i = i +1){
    average = (average + numbers.to_i[i])/2;
  }
  return average
}

//Easy
var numbers = '80:70:90:100';
averageColon(numbers);

function averageColon(){

numbers.split(':').map(function(number){
  return parseInt(number)
})
}


//Hard
var numbers = '80:70:90:100';
averageColon(numbers);

function averageColon(numbers){
return numbers.split(':').reduce(function(result, number, index, vector){
  return result + parseInt(number)/ vector.length
  },0)
}
//result= acumulador o sumatorio
//number = item sobre el que se itera
//index= indice, posicion sobre el que se itera en el array
//vector = array