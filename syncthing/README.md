# syncthing
Syncthing image based on gliderlabs/alpine, only 32MB size.

By default serves Web UI on port ```8384``` and listens on ```22000``` for the syncing itself. 

Uses ```/data/config``` volume to store its configuration, and ```/data/sync``` as top level for data.
