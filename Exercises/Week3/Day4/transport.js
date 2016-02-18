function ticketBuilder (){
  return function(){
    console.log("Welcome, " + name + ". Here is your ticket for the " + transport + "!");
  }
}

var getPlaneTicket = ticketBuilder('plane');
var getBusTicket= ticketBuilder('bus');

getPlaneTicket('Antonio');
getPlaneTicket('Pedro')
getBusTicket('Antonio')