# CLI cheatsheet

* `pwd`: print working directory: prints the current folder you are in
* `cd Downloads`: goes into directory `Downloads`
* `ls`: lists all files and directories in the current working directory
* `rm file`: removes file
* `mkdir a`: makes a directory named `a`
* `wget url`: Downloads the file the URL points to
* `cp file_a file_b`: copies file\_a into a new file file\_b
* `mv file_a file_b`: moves file\_a into file\_b. Useful for renaming files.
* `touch file_a`: creates an empty file `file_a`
* `nano file_a`: opens file\_a to edit in an interactive terminal-based editor.
* `less file_a`: lets you view a file on the command line.
* `cat file_a file_b ...`: prints the contents of all the files concatenated in order. Can also be used to view a single file.
* `man cmd`: instructions on how to use a certain command
* `echo hi`: prints hi
* Pipes: use the output of one command as input for another: `fortune | cowsay`
* Redirection: redirect the output of a command to a file: `ls > files.txt`

# Bash scripting
You can combine sequences of commands together into one file to run all at once. Bash also contains some useful constructs to write more complicated programs.

* variables: `NAME="chinmaya"` `DIR=$(pwd)`

* if:
```
if [[ $(date +%H) -ge 11 ]]; then
  echo "it's past 11"
else
  echo "it's not past 11"
fi
```

* while:
```
while true; do
  echo hello
  sleep 2
done
```

* for:
```
for i in *; do
  cp $i new_folder/$i
done
```
