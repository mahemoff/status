#!/bin/bash
# We use a tiny python server because in-browser CoffeeScript won't work
# on file:/// URIs.
echo 'please surf to http://localhost:8000/examples/index.html'
python -m SimpleHTTPServer
