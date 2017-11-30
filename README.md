This repo installs Teeworlds using saltstack and docker.
No manual config is necessary.
Based on Ubuntu Xenial.

Prerequisite:

- Slight knowledge of Saltstack and Docker. This project is pretty simple however, so no in-depth knowledge is needed.
- A fully functional Saltstack setup. This means your master has been set up and is functioning.

Installation:

- Make sure your salt configuration is complete. 
  The provided shell script contains an install for salt minions. You need to manually enter your salt master's IP address and the minion's name.
- Apply docker.sls if docker still needs to be installed.
- Apply teeworlds.sls and wait for it to finish.
- Your server should now be reachable on the IP of your minion. 
  Teeworlds binds on the default 8303 port, but this can be changed to another port if preferred.


This repo is provided as is, updates are very unlikely.