#!/bin/bash

port1=$RANDOM
port2=$RANDOM
port3=$RANDOM
port4=$RANDOM
osascript -e 'tell app "Terminal"
    do script with command "echo port 1 && python ~/code/python/bellman-ford/bfclient.py '$port1' 5 127.0.0.1 '$port2' 5 127.0.0.1 '$port3' 30" in window 2
    do script with command "echo port 3 && python ~/code/python/bellman-ford/bfclient.py '$port3' 5 127.0.0.1 '$port1' 30 127.0.0.1 '$port2' 5" in window 3
end tell'


osascript -e 'tell app "Terminal"
    do script with command "echo port 2 && python ~/code/python/bellman-ford/bfclient.py '$port2' 5 127.0.0.1 '$port1' 5 127.0.0.1 '$port3' 5" in window 4
end tell'
# echo "port 4: "$port4
# echo "port 2: "$port2
echo port 4 && python ~/code/python/bellman-ford/bfclient.py $port4 5 127.0.0.1 $port2 7

# python ~/code/python/bellman-ford/bfclient.py $port2 10 127.0.0.1 $port1 10 127.0.0.1 $port3 5
