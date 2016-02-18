var simplecached = require('simplecached');
var port = 1702;
var server = new simplecached.Server(port, function(error, connection) {
    console.log('Connection to %s open...', port);
});
