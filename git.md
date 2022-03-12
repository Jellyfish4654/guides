---
layout: default
title: Command Line & Git Quickstart
up: .
---

## Command Line
A quick overview of common commands. These should work in `bash` (and most shells) on Linux and Mac and in PowerShell in Windows.
Obviously these are not *all* commands; if you want a list of them, type `help`.
If you want more information about how a command works, type `COMMAND --help` or `man COMMAND` (on Linux and Mac).

Print current folder:
```
pwd
```

List files in folder:
```
ls          # list files in current folder
ls FOLDER   # list files in given folder
```

Change current folder:
```
cd NEW-FOLDER
```

## Git
This is inteded to be a quick reference for commmonly used commands in `git`,
not a replacement for learning how it works. This does not cover a lot of important
features of git, notably branching and merge conflict resolution. If you want a more detailed
reference of commands, type `git --help` or `git SUBCOMMAND --help`.

### Terminology
*Repository* - project  
*Commit* - a change to the code recorded in git  
*Local Repository* - the version of a repository on your computer  
*Remote* - the version of a repository in the cloud

### Commands
Create an empty git repository in current folder:
```bash
git init
```

Create a local git repository from one in the cloud:
```
git clone "URL-OF-REPO"
```

Make a commit:
```bash
git add .
git commit -am "jeffrey was here"
```

Associate local git repository with a remote:
```
git remote add origin "URL-OF-REPO"
```

Push your commits to remote:
```bash
git push
git push -u origin master # if this is the first time pushing 
```

Pull updates from remote:
```bash
git pull
``` 

## .gitignore
If you want to exclude files from the repository, place them in a `.gitignore` file,
which should be at the root (outermost folder) of your repository.
