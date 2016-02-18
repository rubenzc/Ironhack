var client = require('simplecached');
var options = {
  port: 1702,
  host: '127.0.0.1'
};
var client = new client.Client(options, function(error) {
  console.log('Client connected');
  var key = 'ironhack';
  var value = 'we are ironhackers';
​
  client.set(key, value, function(error, result){
    if (error) console.log('Error setting the key');
    if (result) console.log('The key and value was set');
    if (!result) console.log('Key and value couldn\'t be set')
​
  client.get(key, function(error, value){
    console.log('READ ->', value);
    client.close();
  })
​
  })
});
​