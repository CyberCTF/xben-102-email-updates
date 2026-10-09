#!/bin/sh
# The login endpoint refuses wrong credentials.
curl -fsS --max-time 10 -d 'username=nobody&password=probe' http://web:8000/login | grep -q 'Login Failed'
