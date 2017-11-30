This repo installs Teeworlds using SaltStack and Docker.
No manual config is necessary.
Based on Ubuntu Xenial.

Prerequisite:

- Slight knowledge of SaltStack and Docker. This project is pretty simple however, so no in-depth knowledge is needed.
- A fully functional SaltStack setup. This means your master has been set up and is functioning.

Installation:

- Make sure your salt configuration is complete. 
  The provided shell script contains an install for salt minions. You need to manually enter your salt master's IP address and the minion's name.
- Apply docker.sls if docker still needs to be installed.
- Apply teeworlds.sls and wait for it to finish.
- Your server should now be reachable on the IP of your minion. 
  Teeworlds binds on the default 8303 port, but this can be changed to another port if preferred.

The server's config can be changed by manually changing the .cfg files that the Docker image provides.
This repo is provided as is, updates are very unlikely. 

Credit for the Docker image goes to virtualroot. https://github.com/virtualroot
Docker image can be found at https://hub.docker.com/r/virtualroot/docker-teeworlds/