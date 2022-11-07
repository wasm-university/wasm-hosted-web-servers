#!/bin/bash
hey -n 300 -c 100 -m POST \
-H "Content-Type: text/plain" \
-d 'Bob Morane' \
"http://127.0.0.1:8080/hello"
