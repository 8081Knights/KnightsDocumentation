#!/bin/bash

function create {
  # Create a file with hugo with the given path.
  echo "Creating a new web page..."
  hugo new content $2
}

function push {
  # Push changes to the remote repository
  # also export and zip the folder
  echo "Pushing changes to the remote repository..."

  tar -cjvf knights.tar.bz ./public/*
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
