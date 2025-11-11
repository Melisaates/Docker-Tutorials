//Tech.js
//express kullanarak basit bir web sunucusu oluşturma
//express:  hızlı, minimalist web framework'üdür ve Node.js üzerinde çalışır.

const express = require('express');
const app = express();
const port = 5555;

app.get('/', (req, res) => {
  res.send('Dockerfile nodejs çalıştı!');
  res.setHeader('Content-Type', 'text/plain');
  res.statusCode = 200;
});

app.listen(port, () => {
  console.log(`Tech js app listenning Server http://localhost:${port} adresinde çalışıyor`);
});