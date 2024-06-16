const express = require('express');
const app = express();
const db = require('./config/db.config.js');
const PORT = process.env.PORT || 8080;

app.get('/', (req, res) => {
    res.send('Hello, HealthConnect!');
});

app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
});
