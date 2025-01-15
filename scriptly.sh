#!/bin/bash

function create {
  # Create a file with hugo with the given path.
  echo "Creating a new web page... No can do"

}

function push {
  # Push changes to the remote repository
  # also export and zip the folder
  echo "Pushing changes to the remote repository..."
  hugo build
  rm knights.tar.bz

  
  tar -cjvf knights.tar.bz ./public/*
  git add .

  git commit -am "Auto Generated commit to Push to Website"
  git push

}

function run {
  # Run the server
  echo "Running the application..."
  hugo serve --buildDrafts --disableFastRender
  
}

case $1 in
  create) create ;;
  push) push ;;
  run) run ;;
esac
