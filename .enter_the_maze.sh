#!/bin/bash
mkdir -p ~/theMaze
printf """
--------------------------------------------------------------------------------
MAZE LESSON I: WHERE AM I?

(Before we begin, expand your Terminal window by dragging out the lower-right corner)

Terminal provides access to your computer's file system.
It is similar to Finder (on Mac) and the Start menu (on PC), but more flexible and powerful.
To see where you are in your file system, use the 'print working directory' command (pwd) \n
Try typing this into Terminal: $ pwd
^^ NB: Every Terminal command automatically begins with a $, so you don't have to type that part ^^
The output (i.e., /Users/yourname/theMaze) is the *path* your computer follows to find the current directory. 
To compare this path to how you normally find a directory in Finder, type: $ open .


When you are ready to move on, type $ cat two_ls.txt
--------------------------------------------------------------------------------
""" > ~/theMaze/one_pwd.txt

printf """
--------------------------------------------------------------------------------
MAZE LESSON II: LS'T I FORGET 

How do you know what files and folders are in the current directory? Use the 'list' command (ls).
$ ls
This command can take some optional parameters:
    $ ls -a lists all files, including hidden files. 
    $ ls -l lists additional info about the folder contents. The first character on the left indicates whether an item is a file (-) or folder (d).
You can also combine parameters, e.g., $ ls -al

When you are ready to move on, type $ cat three_cat.txt
--------------------------------------------------------------------------------
""" > ~/theMaze/two_cat.txt

printf """
--------------------------------------------------------------------------------
MAZE LESSON III: THE CAT MAN COMETH

To read the contents of a file within Terminal, the easiest option is the 'concatenate' command (cat):
$ cat [file_name_in_current_directory OR absolute_path]
The <Tab> key is your friend. It will autocomplete the file name whenever possible. Try typing cat th <Tab>

For larger files, use the 'less' command to avoid loading the entire file at once.
$ less [file_name_in_current_directory OR absolute_path]
To scroll, use the *u* (up) and *d* (down) keys. Type *h* for more info. To return to your Terminal session, type *q*.

To get more detail on any command, read the 'manual' (man):
$ man cat
^^ NB: Use the scroll hotkeys that you learned in the less command to navigate the manual ^^

When you are ready to move on, type $ cat four_ls.txt
--------------------------------------------------------------------------------
""" > ~/theMaze/three_cat.txt

printf """
--------------------------------------------------------------------------------
MAZE LESSON IV: THROW ON THAT OL' CD

To navigate around the file system, use the 'change directory' command (cd). cd accepts one argument
$ cd [absolute_path_to_file OR name_of_folder_in_working_directory OR relative_path]
absolute_path_to_file: e.g., $ cd /usr/bin/
name_of_folder_in_working_directory: e.g., $ cd route1
relative_path: e.g., $ cd .. (moves up one directory)

Just as with cat, the <Tab> key is your friend. It will help you autocomplete the path whenever possible

When you are ready to move on, type $ cat five_scripts.txt
--------------------------------------------------------------------------------
""" > ~/theMaze/four_ls.txt

printf """
--------------------------------------------------------------------------------
MAZE LESSON V: RUN THE JEWELS, RUN THE SCRIPTS 

One extremely common use case for Terminal is to execute scripts written in a high-level programming language.
When you type $ ls or $ cat, you are using the Bash programming language, which was designed for use in UNIX terminal shells like this one.
You can identify a script by its file suffix. Just like a Word doc ends in .doc, a Bash script ends in .sh

To execute a Bash script, just type *.* followed by the name of the script into Terminal 
$ . executeMe.sh

Now you are ready to execute a Python script. Python scripts end in .py 
To execute one, use the python command:
$ python theTreasure.py

Now that you've learned a valuable lesson about trust, type $ cat six_shortcuts.txt
--------------------------------------------------------------------------------
""" > ~/theMaze/five_scripts.txt

printf """
--------------------------------------------------------------------------------
MAZE LESSON VI: SPEEDING IT UP 

Some pro tips for mastering Terminal:
- Use up and down arrows to cycle through recent commands (and avoid re-typing them)
- Ctrl + u clears all text in your current command
- Ctrl + a brings the cursor to the front of the current command
- Ctrl + e brings the cursor to the end of the current command
- Remember, <Tab> is your friend!
- If you can't find something, don't forget about hidden files and how to see them...
- An alternative to executing a Python script is to use the interactive Python interpreter within a Terminal shell: 
    $ python
    You can use this to test out functions or for quick math computations
    For example, you can do a modulus calculation (i.e., calculate the remainder after division) with x <percent symbol> y
    To return to Terminal shell from the interactive Python shell, type Ctrl + d

You are now ready to start searching the Maze. Start by cd'ing into route1, perhaps?
--------------------------------------------------------------------------------
""" > ~/theMaze/six_shortcuts.txt


cd ~/theMaze

for i in `seq 1 30`;
    do
        mkdir -p ~/theMaze/route$i
    done   

printf """#!/usr/local/bin/python 
import webbrowser
webbrowser.open('https://www.youtube.com/watch?v=xfr64zoBTAQ')""" > theTreasure.py
chmod u+x ~/theMaze/theTreasure.py

printf "#!/bin/bash/
echo You just executed this script!" > executeMe.sh

printf """#!/usr/local/bin/python 
import webbrowser
webbrowser.open('https://www.youtube.com/watch?v=6-HUgzYPm9g')""" > route1/theRealTreasure.py
chmod u+x ~/theMaze/route1/theRealTreasure.py

printf """Down which route is the real real treasure hidden? I'll never tell. 
But my buddy Python might know. 
Just ask him about 1050 modulus 41 and add 3""" > route1/.clue.txt

printf """#!/usr/local/bin/python 
import webbrowser
webbrowser.open('https://www.youtube.com/watch?v=4fW3tX-UinQ')""" > route28/.theRealRealTreasure.py
chmod u+x ~/theMaze/route28/.theRealRealTreasure.py


echo """
=====++++++======+++++=====++++++======+++++=====++++++======+++++=====++++++
Welcome, $USER, to the Maze. 
Something of great value is hidden here, something you used to know.
It calls out like a distant memory or a long lost friend.
To recover it, you must first solve the secrets of the Maze.
=====++++++======+++++=====++++++======+++++=====++++++======+++++=====++++++"""
say "Are you ready to proceed, $USER" 
echo "Enter [y/n]?"

read user_input

if [ "$user_input" == "y" ]; then
    cat one_pwd.txt
else
    echo "When you are ready, type $ cat one_pwd.txt"
fi

# sleep 3s
# say "Are you ready to proceed, $USER?"


# cd, pwd, ls, rm, echo, mkdir, touch, find, man, cat
# $PATH, export
# say, read, if

