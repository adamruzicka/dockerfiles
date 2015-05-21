# syncthing
Syncthing image based on gliderlabs/alpine, only 32MB size.

By default serves Web UI on port ```8080``` and listens on ```22000``` for the syncing itself. 

Uses ```/data``` volume to store its configuration, additional volumes may be mounted for syncing.
