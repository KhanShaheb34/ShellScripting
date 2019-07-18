#!/bin/bash

git status
echo -n "Commit Message: "
read COMMIT_MESSAGE
echo "Adding everything..."
git add .
echo "Commiting \"$COMMIT_MESSAGE\""...
git commit -m "$COMMIT_MESSAGE"
echo "Pushing using username KhanShaheb34..."
echo -n "Password for KhanShaheb34: "
read -s PASS
git push origin master
echo "Succesfully Pushed!"
