#!/bin/bash

sleep 3

xdotool type "python -c 'import pty;pty.spawn(\"/bin/bash\")'"
xdotool key Return

xdotool key Ctrl+Z
xdotool type "stty raw -echo;fg"
xdotool key Return

xdotool type "export TERM=xterm-256color"
xdotool key Return

xdotool type "export SHELL=/bin/bash"
xdotool key Return
