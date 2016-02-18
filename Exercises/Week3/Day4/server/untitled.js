function ticketBuilder (transport){
  var passenger = 0;
  return function(name){
    passengerNumber += 1;
    console.log("Welcome, " + name + ". Here is your ticket for the " + transport + "!");
    console.log(' you are a passenger #' + passengerNumber);
  }
}

var getPlaneTicket = ticketBuilder('plane');
var getBusTicket= ticketBuilder('bus');

getPlaneTicket('Antonio');
getPlaneTicket('Pedro')
getBusTicket('Antonio')