#Implementation of Bellman-Ford in Python

Robert Cornacchia (rlc2160)
Computer Networks
Fall 2015


Note:
I'm very sorry, but for some reason, this program does not run on CLIC servers.
I'm not sure why, but after debugging for an hour, I can't seem to find a solution.
PLEASE run on local machine (I am using a Mac).
I spent 4 days on this lab, and would really appreciate it.
Thank you and have a great break!

All functions work as specified.

################################################################################
################################################################################

To run the program:
1) python bfclient.py PORT timeout neighbor_ip neighbor_port neighbor_weight neighbor_ip neighbor_port neighbor_weight


There is a script that will work on Mac if you open 4 Terminal screens and then run ./bfclient.sh
You can also use ./clear.sh to clear all 4 Terminals at once.


################################################################################
################################################################################

// DESCRIPTION OF PROTOCOL

For ROUTE_UPDATE messages:
    The protocol first adds the source ip and port separated by a space.
    Then, the protocol adds to the message all the members of the distance vector to the msg separated by a space.
    Then the message is ended with "EOT".

LINK_DOWN:
    When a node receives a LINK_DOWN message, it sends a LINK_DESTROYED to members of its distance vector.

LINK_UP:
    When it receives a LINK_UP, the shorter distance is conveyed normally through ROUTE_UPDATE messages.

LINK_DESTROYED:
    This message informs all members of the destroyed link's distance vector that the link has been destroyed.
    When the message is received, if the link was the predecessor node, it will be replaced with the original distance
    to the target if the target was a neighbor.

CLOSE:
    The program cleans up and terminates.
