//1. Creo primero la función vikingo con sus propiedades

var Viking = function(name, health, strength){
  
  this.name = name;
  this.health = health;
  this.strength =strength;

//3. Función de ataque
  this.attack = function(){
    return this.strength;
  }

//4. Función que gestiona los golpes que recibe el vikingo
  this.receiveDamage = function(damage){
    return this.health -= damage;
  }
}

//5. Let's train!!
var Pit = function(fighter1, fighter2, turn){
  this.fighter1 = fighter1;
  this.fighter2 = fighter2;
  this.turn = 10;

  this.pitFight = function(attack, receiveDamage){
    for (i=0; i < this.turn; i++){
      if (this.fighter1.health > this.fighter2.strength && this.fighter2.health > this.fighter1.strength){
      this.fighter2.receiveDamage(this.fighter1.attack());
      this.fighter1.receiveDamage(this.fighter2.attack());
        console.log(this.fighter2.name + "`s life:" + this.fighter2.health);
        console.log(this.fighter1.name + "`s life:" + this.fighter1.health);
      }
     else{
      console.log("Why don't we stop and go to have some beers man??");
      break;
     } 
    }
  }
}


//2. Creo los 2 vikingos que se van a enfrentar

//var viking1 = new Viking('Brutus', Math.floor((Math.random()*100)+1), Math.floor((Math.random()*20)+1))
//var viking2 = new Viking('Pepote', Math.floor((Math.random()*100)+1), Math.floor((Math.random()*20)+1))
//var viking1 = new Viking('Brutus', 90, 20)
//var viking2 = new Viking('Pepote', 100, 10)

var saxons = new Saxons(Math.floor((Math.random()*10)+1), Math.floor((Math.random()*10)+1), Math.floor((Math.random()*10)+1), Math.floor((Math.random()*10)+1))
var vikings = new Viking('Thor', Math.floor((Math.random()*500)+1), Math.floor((Math.random()*500)+1))


var trainingPit = new Pit(viking1, viking2, 2)
trainingPit.pitFight()

