// index.js
const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.send('Hello, world! Welcome to my production app.');
});

app.listen(port, () => {
  console.log(`App listening at http://localhost:${port}`);
});

app.get('/health', (req, res) => {
  res.status(200).send('OK');
});

