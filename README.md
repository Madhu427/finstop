# finstop

create a basic nodejs app

-->initilalize pakage.json file to track dependencies

npm init

--> for this app we use express as our web server

npm install --save express

--> create a file named app.js for the web server
const app = require('express')();

app.get('/', (req, res) => {
res.send('Hello, World!\n');
});

app.listen(4000, '0.0.0.0');

--> verify that your server is running give the command to run:
node app.js