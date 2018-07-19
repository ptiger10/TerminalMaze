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
    $ ls -l lists additional info about the folder contents. 
        The first character on the left indicates whether an item is a file (-) or folder (d).
You can also combine parameters, e.g., $ ls -al

When you are ready to move on, type $ cat three_cat.txt
--------------------------------------------------------------------------------
""" > ~/theMaze/two_ls.txt

printf """
--------------------------------------------------------------------------------
MAZE LESSON III: THE CAT MAN COMETH

To read the contents of a file within Terminal, the easiest option is the 'concatenate' command (cat):
$ cat three_cat.txt
The <Tab> key is your friend. It will autocomplete the file name whenever possible. Try typing $ cat thr <Tab>

For larger files, use the 'less' command to avoid loading the entire file at once. This opens a separate reader within Terminal.
$ less three_cat.txt
Type *h* for more info on how to use the reader. To scroll, use the *u* (up) and *d* (down) keys. To return to the prior screen, type *q*.

To get more detail on any command, read the 'manual' (man):
$ man cat
^^ NB: This opens the same reader as the less command, so use the same hotkeys. ^^

When you are ready to move on, type $ cat four_cd.txt
--------------------------------------------------------------------------------
""" > ~/theMaze/three_cat.txt

printf """
--------------------------------------------------------------------------------
MAZE LESSON IV: THROW ON THAT OL' CD

To navigate around the file system, use the 'change directory' command (cd). cd accepts one argument
$ cd [absolute_path_to_file OR name_of_folder_in_working_directory OR relative_path]
absolute_path_to_file: $ cd /usr/bin/
name_of_folder_in_working_directory: $ cd route1
relative_path: $ cd .. (moves up one directory)

Just as with cat, the <Tab> key is your friend. It will help you autocomplete the path whenever possible

Useful cd shortcuts:
    ~/ takes you to the home directory of the current user (e.g., ~/theMaze)
    / takes you to the root directory of your computer 

When you are ready to move on, type $ cat five_echo.txt
--------------------------------------------------------------------------------
""" > ~/theMaze/four_cd.txt


printf """
--------------------------------------------------------------------------------
MAZE LESSON V: IS THERE AN ECHO IN HERE?

To return text in Terminal, use the 'echo' command (echo).
$ echo Hello World!

You can use Terminal to set variable values, and echo to return those value.
$ var='Hello World' OR $ export var='Hello World'
^^ NB: Never put spaces on either side of the = sign when declaring a variable in Bash ^^

$ echo \$var
^^ NB: To reference a stored variable in Terminal, you must prepend with a $ ^^

You can also use Terminal to inspect the system-level variables set by your computer (aka 'environment variables').
Environment variables are just like variables that you define, except they are set automatically when you launch Terminal.
Environment variables are presented in all caps. To see all of them, type $ env
A very important environment variable is the PATH variable
Your PATH is the list of directories (separated by colons) that the computer checks for an executable file whenever it receives a Terminal command.
$ echo \$PATH

For example, when you type 'echo' into Terminal, it searches all the directories in the PATH.
Once it finds an executable file called 'echo' in the '/bin' directory, it executes that file.

See for yourself:
$ which echo
^^ The which command shows where on the PATH the computer is currently finding the echo command. ^^ 
$ ls -l /bin
This code returns a list of all executable files in the /bin directory.
To isolate a single file here, use the 'get regular expression' command (grep): $ ls -l /bin | grep 'echo'
^^ NB: In the code above, the | character is a 'pipe' between the two commands. 
A pipe takes the output of the first command and uses it as the input of the second ^^

When you are ready to move on, type $ cat six_scripts.txt
--------------------------------------------------------------------------------
""" > ~/theMaze/five_echo.txt


printf """
--------------------------------------------------------------------------------
MAZE LESSON VI: RUN THE JEWELS, RUN THE SCRIPTS 

One extremely common use case for Terminal is to execute scripts written in a high-level programming language.
When you type $ ls or $ cat, you are using the Bash programming language.
Bash was designed for use in UNIX terminal shells like this one.
You can identify a script by its file suffix. Just like a Word doc ends in .doc, a Bash script ends in .sh

To execute a Bash script, just type *.* followed by the name of the script into Terminal 
$ . executeMe.sh

Now you are ready to execute a Python script. Python scripts end in .py 
We are a Python 3 family around here (by default, MacOS still ships with Python 2)
To override the default python interpreter, install Python 3 then use the 'alias' command (alias)
$ alias python=python3

To execute a python script, use the python command:
$ python theTreasure.py

Now that you've learned a valuable lesson about trust, type $ cat seven_shortcuts.txt
--------------------------------------------------------------------------------
""" > ~/theMaze/six_scripts.txt

printf """
--------------------------------------------------------------------------------
MAZE LESSON VII: SPEEDING IT UP 

Some pro tips for mastering Terminal:
- You must use left-right arrow keys (not your mouse) to move your pointer
- That said, you can copy/paste into the Terminal
- Use up-down arrows to cycle through recent commands (and avoid re-typing them)
- Ctrl + u clears all text in your current command
- Ctrl + a brings the cursor to the front of the current command
- Ctrl + e brings the cursor to the end of the current command
- Remember, <Tab> is your friend!
- If you can't find something, don't forget about hidden files and how to see them...
- An alternative to executing a Python script is to use the interactive Python interpreter within a Terminal shell: 
    $ python
    You can use this to test out functions or for quick math computations
    For example, you can do a modulus calculation (i.e., calculate the remainder after division) with 5 <percent symbol> 3
    To return to Terminal shell from the interactive Python shell, type Ctrl + d

You are now ready to start searching the Maze. Start by cd'ing into route1, perhaps?
--------------------------------------------------------------------------------
""" > ~/theMaze/seven_shortcuts.txt


cd ~/theMaze

for i in `seq 1 30`;
    do
        mkdir -p ~/theMaze/route$i
        printf """
from random import randint
print('There is nothing for you here. Only more maze')
    """ > ~/theMaze/route$i/.theRealRealTreasure.py
    done   

printf """
import webbrowser
webbrowser.open('https://www.youtube.com/watch?v=xfr64zoBTAQ')""" > theTreasure.py

printf "#!/bin/bash/
echo You just executed this script!" > executeMe.sh

printf """ 
import webbrowser
import time
webbrowser.open('https://www.youtube.com/watch?v=6-HUgzYPm9g')
time.sleep(5)
print('Was that it? Or is there something else here?')""" > route1/theRealTreasure.py

printf """
print('Clue: my password is the same as the name of the SHELL environment variable')
condition = False
while condition == False:
    user_input = input('--- Halt, what is the password? [To exit, enter q]: ')
    if user_input == '/bin/bash':
        print('Down which route is the real real treasure hidden? I will never tell. \
        But my buddy the Python interpreter might know. \
        Just ask him about 1050 modulus 41 and add 3')
        condition = True
    elif user_input == 'q':
        condition = True
    else:
        print('Try that one again')
""" > route1/.executeThisClue.py

printf """
import webbrowser
print('You have found the true treasure! Eternal glory is yours')
webbrowser.open('https://www.youtube.com/watch?v=4fW3tX-UinQ')""" > route28/.theRealRealTreasure.py


echo """
=====++++++======+++++=====++++++======+++++=====++++++======+++++=====++++++
Welcome, $USER, to the Maze. 
Something of great value is hidden here, something you used to know.
It calls out like a distant memory or a long lost friend.
To recover it, you must first solve the secrets of the Maze.
=====++++++======+++++=====++++++======+++++=====++++++======+++++=====++++++"""
sleep 5s
say "Are you ready to proceed, $USER" 
echo "Enter [y/n]?"

read user_input

if [ "$user_input" == "y" ]; then
    cat one_pwd.txt
else
    echo "When you are ready, type $ cat one_pwd.txt"
fi

