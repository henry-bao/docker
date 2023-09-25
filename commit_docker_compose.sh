#!/bin/bash

# Initialize a git repository if it doesn’t exist
[ -d .git ] || git init

# Find and add docker-compose files and their containing folders
find . -type f -name 'docker-compose.yml' -exec sh -c '
    dir=$(dirname {})
    git add $dir
' \;

# Commit the changes
git commit -m "Add docker-compose files and their containing folders"

