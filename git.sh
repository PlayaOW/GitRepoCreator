#!/bin/bash


echo "Welcome to GIT repository automation"
echo "Use git.sh path/to/your_project https://github.com/USERNAME/YOUR_REPO.git"
echo "Also You may need to create a repository in github since this script requires it"
PATH_PROJECT=$1

cd "$PATH_PROJECT"

git --version 2>$PATH_PROJECT/error.log

if [ -s "error.log" ]; then
	echo "git is not installed"
	apt-get install git

else
	echo "Git is installed in this machine!!"
fi
rm "$PATH_PROJECT/error.log"

git init
git add -A
git status
echo "Please enter your commit message: "
read COMMIT
git commit -m "$COMMIT"
git status

echo "Do you want git to ignore any file?(Y/N)"
read CHOICE
if [ $CHOICE = "Y" ]; then
	read -p "Seperate each entry with a space (eg, notes.txt log.txt)" -a array_ignore
	>.gitignore
	for item in "${array_ignore[@]}"; do
		echo "$item" >> .gitignore
	done
	cat .gitignore
else
	echo "No ignore files added!!"
fi

git remote add origin $2
git branch -M main
git push -u origin main



