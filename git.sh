#!/bin/bash

git status
echo -n "Commit Message: "
read COMMIT_MESSAGE
echo "Adding everything..."
git add .
echo "Commiting \"$COMMIT_MESSAGE\""...
git commit -m "$COMMIT_MESSAGE"
echo "Pushing..."
git push origin master
echo "Succesfully Pushed!"
