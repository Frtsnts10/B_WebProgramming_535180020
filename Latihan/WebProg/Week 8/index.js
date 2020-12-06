const http = require('http');

const port = 3000;
const app = http.createServer(function (request, response) {
    response.writeHead(200, { 'Content-Tyoe': 'text/plain'});
    response.end('This is an HTTP example.');
});
app.listen(port);

console.log(`The server has been started on port ${port}`);
