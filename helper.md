## Terminal Guide

```
~
├── Applications
├── Desktop
├── Documents
├── Downloads
├── Dropbox
├── Google\ Drive
├── Library
├── Movies
├── Music
├── Pictures
└── Public
```

This is how the home folder is structured, you can use the `cd` command to move around. `cd Desktop` to see all of the folders and files on the desktop, or `cd Documents` to see all documents.

#### working through the terminal
* `cd`, change directory, _i.e._ `cd <folder>`
* `cd ../`, change directories up one level
* `cd ../../`, change directories up two levels
* `cd ~`, change directory to the home folder
* `ls -al`, list all folders in the directory
* `mv`, move a file or folder, _i.e._ `mv file1 ~/Documents`
* `*` or `.`, symbols that translate to "all", _i.e._ `mv * ~/Documents`
* `cp`, copy a file or folder, _i.e._ `cp * ~/Documents`
* `rm`, delete a file or folder, _i.e._ `rm file1`

#### working with git version control
* `git clone`, clone a folder from github, _i.e._ `git clone <repo>`
* `git pull`, pull new remote changes into a cloned github folder, _i.e._ `git pull`

#### working with programming languages
* `sh` or `bash`, execute a shell file, _i.e._ `sh file.sh`
* `python`, execute a python file, _i.e._ `python file.py`
* `ruby`, execute a ruby file, _i.e._ `ruby file.rb`
* `perl`, execute a perl file, _i.e._ `perl file.pl`
* `node`, execute javascript files, _i.e._ `node file.js`
