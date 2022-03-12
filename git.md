---
layout: default
title: Command Line & Git Quickstart
up: /
---
## Command Line
These should work in `bash` (and most shells) on Linux and Mac and in PowerShell in Windows.

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
*Repository* - project  
*Commit* - a change to the code recorded in git  
*Local Repository* - the version of a repository on your computer  
*Remote* - the version of a repository in the cloud

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