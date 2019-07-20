#!/bin/bash

git status

if ["$#" -gt "0"]
then
        COMMIT_MESSAGE = $0
else
	echo -n "Commit Message: "
        read COMMIT_MESSAGE
fi

echo "Adding everything..."
git add .
echo "Commiting \"$COMMIT_MESSAGE\""...
git commit -m "$COMMIT_MESSAGE"
echo "Pushing..."
git push origin master
echo "Succesfully Pushed!"
