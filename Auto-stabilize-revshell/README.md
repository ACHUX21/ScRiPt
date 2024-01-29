![Typing SVG](https://readme-typing-svg.herokuapp.com?font=Fira+Code&pause=1000&width=435&size=35&lines=Python-auto-upgrade)
<br>

This is a bash script that automates the process of spawning a TTY shell using the xdotool tool. The script simulates keystrokes to run a Python command that spawns a bash shell, and then sets up the environment for a better TTY experience.
Prerequisites

`xdotool` is a command-line tool used in Linux systems to simulate user input. It can simulate keyboard and mouse input, manipulate windows, and automate repetitive tasks.</br>
  
  
    xdotool must be installed on the system.
# Ubuntu, Debian, and Linux Mint

   `sudo apt-get update & sudo apt-get install xdotool`

# Red Hat-based Linux

   `sudo dnf install xdotool`

# CentOS

   `sudo yum install xdotool`

# Arch Linux

   `sudo pacman -S xdotool`

# macOS

To install xdotool on macOS, you need to first install Homebrew, a package manager for macOS. Then, run the following command in the terminal:

   `brew install xdotool`

## HOW TO USE)

<br>
    Open a terminal window and navigate to the directory where the script is located.</br>
    Run the script by entering ./script_name.sh in the terminal and pressing Enter.</br>
    Wait for 3 seconds for the script to execute.</br>
    The script will simulate keystrokes to run the following commands:</br>
        python -c 'import pty;pty.spawn(\"/bin/bash\")'</br>
        stty raw -echo;fg</br>
        export TERM=xterm-256color</br>
        export SHELL=/bin/bash</br>
    The result will be a TTY shell with improved color support and a better experience.</br>
<br>

## Note)

<br>

    The sleep 3 command at the beginning of the script is to give the user time to focus on the terminal window before the script executes.
    The xdotool tool is used to simulate keystrokes in the terminal window, which allows the script to automate the process of spawning a TTY shell.
    The python -c 'import pty;pty.spawn(\"/bin/bash\")' command spawns a new bash shell with elevated privileges.
    The stty raw -echo;fg command sets the terminal to raw mode and brings the newly spawned bash shell to the foreground.
    The export TERM=xterm-256color command sets the terminal to support 256 colors.
    The export SHELL=/bin/bash command sets the default shell to bash.
