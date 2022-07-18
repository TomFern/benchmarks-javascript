#!/bin/bash

if [ -d myapp ]; then
    rm -rf myapp
fi
npm cache clean --force

time (echo y | npx create-react-app myapp)
