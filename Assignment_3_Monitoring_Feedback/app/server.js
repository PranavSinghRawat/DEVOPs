const http = require('http');

const requestCounter = {
  count: 0,
  increment() { this.count++; }
};

const server = http.createServer((req, res) => {
  if (req.url === '/metrics') {
    res.writeHead(200, { 'Content-Type': 'text/plain' });
    res.end(`# HELP app_requests_total Total number of requests\n# TYPE app_requests_total counter\napp_requests_total ${requestCounter.count}\n`);
  } else {
    requestCounter.increment();
    res.writeHead(200, { 'Content-Type': 'text/html' });
    res.end('<h1>Monitoring Assignment</h1><p>Visit <a href="/metrics">/metrics</a> to see data scraped by Prometheus.</p>');
  }
});

server.listen(8080, () => {
  console.log('App listening on port 8080');
});
