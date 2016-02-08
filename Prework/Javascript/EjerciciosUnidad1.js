//JAVASCRIPT EJERCICIOS

//Write a function that receives an array of names and returns them in a string with , between them. The final two must be separated by and.



function country(){
    var i;
    for(i = 0; i< names.length; i = i +1)
        console.log(names[i] + ",");
        if (names [0]){
            console.log("and " + names[3]);
        }
}

var names;
names = [ "Canada", "Mexico", "Turkey", "Japan" ];

country(names)


// Should print "Canada, Mexico, Turkey and Japan"


//Write a function that receives an object and returns an array of its values.


function objectToArray(country){
    for (key in country){
        console.log(country[key] + ",");
    }
}

var country;

country = {
    name: "Uruguay",
    continent: "South America",
    capital: "Montevideo"
};

// Should print [ "Uruguay", "South America", "Montevideo" ]
console.log(objectToArray(country));