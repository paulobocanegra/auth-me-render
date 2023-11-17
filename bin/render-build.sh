#!/usr/bin/env bash

# exit on error
set -o errexit

npm run build
bundle install
# comment out if not migrating or reseeding
rails db:migrate 
rails db:seed 