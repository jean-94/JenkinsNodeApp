const express = require('express');
const app = express();
const host = 'localhost';
const port = 5000;

var hits;

app.get('/', (req, res) => {
    hits = 0; 
    res.send(`Hello from my node app, you have visited me ${hits} times`);

});

app.listen(port, () => {
  hits = hits + 1
});
