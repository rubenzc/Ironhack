//EXERCISE 1
//
// Uncomment the exercise code deleting /* and */ chars
// Open the console and reload the index page to see the result of the code.
// Complete the following function to get the letter linked to a spanish DNI
// The functions receives an eight-digit number and returns a single letter.
// The algorithm to calculate the letter is as follows:
// The number is divided by 23 and the remainder is replaced by a letter determined by the following table: 
//	 _____________________________________________________________
//  | 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 |
//	| T R W A G M Y F P D X  B  N  J  Z  S  Q  V  H  L  C  K  E  |
//	|____________________________________________________________|
// 
// You can use 'result' variable to store the resulting letter.
// If your code works, the last three equalities will be "true"


/*
function dniLetter( dni ) {
    
	var mod = dni % 23;

	var lockup = 'TRWAGMYFPDXBNJZSQVHLCKE';
	
	/* Primera versión
	var lockup = {
		0: 'T',
		1: 'R',
		2: 'W',
		3:'A',
		4: 'G',
		5: 'M',
		6: 'Y',
		7: 'F',
		8: 'P',
		9: 'D',
		10: 'X',
		11: 'B',
		12: 'N',
		13: 'J',
		14: 'Z',
		15: 'S',
		16: 'Q',
		17: 'V',
		18: 'H',
		19: 'L',
		20: 'C',
		21: 'K',
		22: 'E'

	}; /*	

	var result = lockup[mod]
    console.log( dni + result);
		return result;
}

(dniLetter(12345678));

console.log( dniLetter( 12345678 ) === 'Z');
console.log( dniLetter( 34667892 ) === 'S');
console.log( dniLetter( 92234488 ) === 'A');*/




//EXERCISE 2
//
// Uncomment the exercise code deleting /* and */ chars
// Open the console and reload the index page to see the result of the code.
// Improve the exercise above to be able to perform this new functionality
// Of course it has to keep working as usual with right inputs.



/*function dniLetter( dni ) {
    
	if ( dni === -1 || typeof(dni) !== 'number'){
		return 'Invalid parameter';
	}

	else{

	var mod = dni % 23;

	var lockup = 'TRWAGMYFPDXBNJZSQVHLCKE';

	
	var result = lockup[mod]
    console.log( dni + result);
		return result;
	}
}


console.log( dniLetter( -1 ) === 'Invalid parameter');
console.log( dniLetter( "A1234567" ) === 'Invalid parameter');*


//EXERCISE 3
//
// Restore the comments marks (/* ) of the previous exercises. First two exercises have to be commented 
// Uncomment the exercise code deleting /* and  chars*/
// Open the console and reload the index page to see the result of the code.
// Write a function that takes an array of words and returns the length of the longest one.


/*



function findLongestWord( array_words ){

		var longest = "";
		
		//RECORRES EL ARRAY
		for(i = 0; i<array_words.length; i++){


			1. Si la longitud de cada cadena del array es mayor que longst se añade, pero
			cómo sabe cual es el mayor valor??

			if(longest.length < array_words[i].length){
				longest = array_words[i];
			}
		}

		return longest.length;


}

console.log( findLongestWord( ["Richie", "Joanie", "Greg", "Marcia", "Bobby"] ) ===6 );
console.log( findLongestWord( ["Blanka", "Zangief", "Chun Li", "Guile"] ) === 7 );
console.log( findLongestWord( ["Red", "Blue", "Green"] ) === 5 );

*/


//EXERCISE 4
//
// Uncomment the exercise code deleting /* and */ chars
// Now we are going to save the longest length of every array in a new array called array_lengths
// Open the console and reload the index page to see the result of the code.
// You have to complete the calculateAverage function (it is a few lines below), and it has
// to return the average of every number in a array instead of the "Not implemented yet" message.


/*
function findLongestWord( array_words ){

		var longest = "";
		
		//RECORRES EL ARRAY
		for(i = 0; i<array_words.length; i++){


			//1. Si la longitud de cada cadena del array es mayor que longst se añade, pero
			//cómo sabe cual es el mayor valor??

			if(longest.length < array_words[i].length){
				longest = array_words[i];
			}
		}

		return longest.length;
}

var array_lengths = [];
array_lengths.push( findLongestWord( ["Richie", "Joanie", "Greg", "Marcia", "Bobby"]) );
array_lengths.push( findLongestWord( ["Blanka", "Zangief", "Chun Li", "Guile"] ) );
array_lengths.push( findLongestWord( ["Red", "Blue", "Green"] ) );
array_lengths.push( findLongestWord( ["Car", "Bike", "Moto","Train","Bus","TucTuc","Helicopter"] ) );
array_lengths.push( findLongestWord( ["Yesterday", "Tomorrow", "Today"] ) );
console.log( "These are the longest lengths of each group: " + array_lengths );

//2. Cómo coge directamente los valores de cada cadena y los muestra?? Yo estoy devolviendo longest.length
//y por pantalla salen los valores de array_lengths. Intuyo que es por el push que lo añade directamente a la
//variable desde la llamada a la función 

console.log( calculateAverage( array_lengths ) === 7.4 && "The average of longest lengths is: " + calculateAverage( array_lengths ))


//Calculamos la media de los valores más altos de los 5 arrays anteriores
//3. No funciona correctamente la media
function calculateAverage( array )
{
	var average = 0;

	for(i = 0; i < array; i ++){
		average = average + array[i];
	}

	return average / array.length; 
}


// Now add more lengths to the array_lengths. You have to do it where <place to add more lines> is written. 
// You can use this structure: array_lengths.push( findLongestWord( [<add some elements>] ) );
// Don't foget to add words to the array. The longer the better!
// Now reload the page and see how changed the average.

*/


//EXERCISE 5
//
// Restore the comments marks (/* */) of the previous exercises.
// Uncomment this exercise code deleting /* and */ chars
// Now we are going to save the longest length of every array in a new array called array_lengths
// Open the console and reload the index page to see the result of the code.
// Write a function charFreq() that takes a string and builds a frequency listing of the characters contained in it. 
// As a condition you must use the object freqCounter.
// Represent the frequency listing as a Javascript object. Try it with something like charFreq("abbabcbdbabdbdbabababcbcbab").
/*

function charFreq( string ) {
	//1. A qué está igualado esta variable?? Un array??
	freqCounter = {};

	for (letter in string){
		//Si cada caracter de cada string del array es undefined, darle valor 1
		if (freqCounter[string[letter]] === undefined) {
			freqCounter[string[letter]] = 1;
		//Si no, añadir y acumular todas las repeticiones que se produzcan
		} else {
			freqCounter[string[letter]]++;  
		}
	}
	return freqCounter;
}


counter = charFreq("abbabcbdbabdbdbabababcbcbab");
console.log(counter);       
console.log( counter['a'] === 7);
console.log( counter.b === 14);
console.log( counter['c'] === 3);
counter = charFreq("xyyyxyxyxzyxyzyxyxyasdfz");
console.log( counter.x === 7 );
console.log( counter['y'] === 10 );
console.log( counter.z === 3 );
console.log( counter['a'] === 1 );
console.log( counter['s'] === 1 );
console.log( counter.d === 1 );
console.log( counter['f'] === 1 );
/*

//BONUS EXERCISE
//
// Restore the comments marks (/* */) of the previous exercise
// Uncomment the exercise code deleting /* and */ chars
// Build a program that transform a boring array into an awesome array.
// The original array has to go through many processes, we divided every process
// in functions. You have to code these functions.
// Here you have some useful functions you can use wherever you need along the program.
// isFinite(), splice(), unshift(), push(), join(), sort(), Math.floor().
// These aren't all the needed functions, and also you can use different ones. They are only suggested functions.
// If you want to know what do they do or learn more functions, you can go to
// https://developer.mozilla.org/en-US/docs/Web/JavaScript
// http://www.w3schools.com/js/default.asp
// Use the search option in both of them to find a function.

/*
function arrayAwesomenator( array ) 
{
	array = deleteRubbish( array );
	array = arrangeElements( array );
	array = beautifyLetters( array );
	array = beautifyNumbers( array );
	array = sortArray( array );
	array = arrayToString( array );

	return array;
}


//It receives an array and returns it without '*' chars
//Example:  deleteRubbish(['a',1,'*',5]) returns ['a',1,5]

function deleteRubbish( array )
	
	//Con indexOf hacemos la búsqueda del caracter en concreto
	while (array.indexOf("*") != -1) {
	//Con splice quitamos de la cadena los valores seleccionados previamente con indexOf
		array.splice(array.indexOf("*"),1);
	}
	return array;
	
}


function arrangeElements( array )
{
	//It receives an array with numbers and letters mixed and returns it with its items arrange:
	//First goes the numbers and then the letters. The order of the elements together does not matter.
	//Example: arrangeElements(['B', 'a', 4 , 23, 'J']) returns [23, 4, 'B', 'a', 'J']

	return array.sort();
}

function beautifyLetters( array )
{
	//It receives an array with numbers and letters and returns it with uppercase vowels and lowercase consonants. Numbers remain unchanged
	//Example: beautifyLetters([1,5,7,'a','J',p,'E']) returns [1,5,7,'A','j',p,'E']
	vowels = ['a','e','i','o','u','A','E','I','O','U'];	
	for (index in array) {
		item = array[index];
		if (typeof(item) != "number") {
			if (vowels.indexOf(item)!= -1) {
				array[index] = item.toUpperCase();
			} else {
				array[index] = item.toLowerCase();
			}
		}
	}
	return array;
}





function beautifyNumbers( array )
{
	//It receives an array with numbers and letters and returns it with its numbers beautified. Letters remain unchanged
	//Beautify process is to reduce a number into a single digit number by adding all its digits together: 
	// 123 = 6 because 1+2+3 = 6
	// 9 = 9
	// 9956 = 2 because 9+9+5+6 = 29 -> 2+9 = 11 -> 1+1 = 2
	// 793 = 1 because 7+9+3 = 19 -> 1+9 = 10 -> 1+0 = 1
	//Example: beautifyNumbers([23,59, 4,'A','b']) returns [5, 5, 4, 'A', 'b']
	for (index in array) {
		item = array[index];
		
		if (typeof(item) === "number") {
			
			while (item.toString().length != 1) {
				newNum = 0;
				numAsString = item.toString();
				for (i in numAsString) {
					newNum = newNum + Number(numAsString[i]);
				}
				item = Number(newNum);
			}
			array[index] = item;
		}
	}
	return array;
}

function sortArray( array )
{
	//It receives an array with numbers and letters and returns it with its items sorted. Numbers on one side and letters on the other.
	//Example: sortArray([5,5, 4, 1, 'j', A','b', 'E']) returns [1, 4, 5, 5, 'A', 'b', 'E', 'j']

	return array.sort();
}


function arrayToString( array )
{
	//It receives an array and returns a string with all its elements.
	//Example: arrayToString([1, 4, 5, 5, 'A', 'b', 'E', 'j']) returns "1455AbEj"
	returnString = ""
	for (index in array) {
		returnString = returnString + array[index];
	}
	return returnString;
}

console.log(arrayAwesomenator(["a", 6, "B", "F", "*", 8, 78, "J" ]) === "668Abfj");
console.log(arrayAwesomenator(["*", "j", 6, "A", "F", "*", 8, "C", "b", "a", 78, "J", 43523, 1111, "r", "q", "y" ]) === "46688AAbcfjjqry");


