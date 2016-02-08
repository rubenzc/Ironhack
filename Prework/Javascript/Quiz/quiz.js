var user = {}

var responses = []

//Función que hace la primera pregunta
function question1() {
	var name = prompt('What is your name?');
	user.name = name;
}


//------------------------------------------


function question2(){
	var firstQuestion = prompt('Does null === 0 ? (Yes or no')

	//Necesitamos convertir la respuesta a lowercase

	if (firstQuestion.toLowerCase() === 'yes'){
		firstQuestion = true
	} else if (firstQuestion.toLowerCase() === 'no'){
		firstQuestion = false;
	} else {

	//Si el usuario escribe algo distinto a yes o no tendrán que
	//volver a contestar la repsuesta
	alert("Please answer either Yes or No")
	return question2();

	}
	responses.push(firstQuestion); //Add the true or false value to the responses array
}

//------------------------------------------

function question3(){
	var js = prompt(' ¿Cual es tu medio de transporte favorito?: (Coche, Moto, Bici, Tren)')
	js = js.toLowerCase();

	switch (js){
		case 'coche':
			alert ('No te has planteado coger la bici y hacer deporte')
		break;

		case 'moto':
			confirm ('Que envidia me das')
			responses.push(false);
		break;

		case 'bici':
			alert ('Muy buena elección, enhorabuena!!')
		break;

		case 'tren':
			confirm ('Es un rollo pero te despreocupas de aparcar')
			responses.push(true);
		break;

		default:
			alert('Elige una de las opciones que te he planteado')
			return question3();
		break;
	}
}

//-------------------------------------------


function question4(){
	var res = prompt("What's the result of ( 9 + 6 * 3 / 9 - 1 * 6 )? ");
	(res === "3") ? responses.push(true) : responses.push(false);
}



function evaluate (responsesArray){
	var total_true = 0;
	var total_false = 0;

	for (var i = 0; i < responsesArray.length; i++){
		(responsesArray[i] === true) ? total_true++: total_false++;
	}

	user.total_true = total_true;
	user.total_false = total_false;

	showResults();
}

function showResults(){

	alert("Name: " + user.name + "\n Correct answers: " + user.total_true + "\nIncorrect answers: " + user.total_false);
}


question1();
question2();
question3();
question4();
evaluate(responses);
