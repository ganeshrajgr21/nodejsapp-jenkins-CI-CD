i#!/bin/bash

if [[ $GIT_BRANCH == "origin/main" ]]; then
	  # Build your project
	  {   ./build.sh

  docker tag reactapp ganeshraj21/devrepo
  docker login -u "ganeshraj21" -p "Ganesh@2198"
  docker push ganeshraj21/devrepo
 }
   else 
	   [[ $GIT_BRANCH == "origin/master" ]]


	   
  fi
exit 0
