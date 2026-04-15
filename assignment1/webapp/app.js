const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.send('<h1>DevOps aldjal Assignment 1: CI/CD Pipeline</h1><p>Status: Successfully Deployed!</p>');
});

if (require.main === module) {
  app.listen(port, () => {
    console.log(`App running at http://localhost:${port}`);
  });
}

module.exports = app;
