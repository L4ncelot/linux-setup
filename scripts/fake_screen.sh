#!/usr/bin/env bash
# This script sets up a virtual X server to enable simulation on a computer without a display
# Usage:
# run this script in a terminal, then launch the simulation with
# export DISPLAY=:1
# or choose a different display (can be supplied to this script as a parameter)

if [ $# -ge 1 ]; then
  screen=$1
else
  screen=":1"
fi
echo "HELP: This script sets up a virtual X server to enable simulation on a computer without a display 
      Usage:
      - run this script in a terminal, then launch the simulation with
           export DISPLAY=:1
        or choose a different display (can be supplied to this script as a parameter)
"
echo "Running the script:"
echo "- Creating FAKE display -> DISPLAY=${screen}"
echo "- press \"ctrl+c\" to kill the script"
Xvfb "$screen" -screen 0 1280x1024x24
