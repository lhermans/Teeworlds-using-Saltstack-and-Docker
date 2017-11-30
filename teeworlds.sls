virtualroot/docker-teeworlds:
  dockerng.image_present:
    - force: True
    - name: virtualroot/docker-teeworlds:latest

teeworlds:
  dockerng.running:
    - name: teeworlds
    - image: virtualroot/docker-teeworlds:latest
    - port_bindings: 8303:8303/udp