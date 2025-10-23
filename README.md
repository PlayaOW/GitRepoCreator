# GIT Repository automation tool.
This is a simple shell script to help automate the setup of a new Git Repository.
## What this script does
- Checks for Git
- Installs git if needed (for Debian/Ubuntu-based systems)
- Initializes Repository
- Add all files:
- Prompts for Commit
- Creates .gitignore

## Prerequisites
- All linux machine (specially one that use apt package managers)
- You may need to run this script with sudo or as a root so it can install Git.

## Manual:
- make the script executable 
```shell 
chmod +x git.sh
```
- run the script 
```shell 
./git.sh /path/to/your/project https://github.com/UserName/Repo.git
```
```shell
$ ./git.sh /home/administrator/my-website

Welcome to GIT repository automation
Use git.sh path/to/your_project https://github.com/USERNAME/YOUR_REPO.git
Also You may need to create a repository in github since this script requires it
Git is installed in this machine!!
Initialized empty Git repository in /home/administrator/my-website/.git/
[master (root-commit) 0a1b2c3] My first website files
 2 files changed, 10 insertions(+)
 create mode 100644 index.html
 create mode 100644 style.css

On branch master
nothing to commit, working tree clean
Do you want git to ignore any file?(Y/N)
Y
Seperate each entry with a space (eg, notes.txt log.txt) .env notes.txt
.env
notes.txt
```

