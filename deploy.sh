#!/bin/bash

if [[ $GIT_BRANCH == "origin/main" ]]; then
	  # Build your project
	   ./build.sh

 	    docker tag reactapp ganeshraj21/prod
	    docker login -u "ganeshraj21" -p "Ganesh@2198"
  	    docker push ganeshraj21/prod
   else  [[ $GIT_BRANCH == "origin/master" ]]
  ./build.sh

 	    docker tag reactapp ganeshraj21/dev
	    docker login -u "ganeshraj21" -p "Ganesh@2198"
  	     docker push ganeshraj21/dev

	   
  fi
exit 0
