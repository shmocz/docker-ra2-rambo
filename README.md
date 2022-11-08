# Docker environment for rambo

Setup:

Update the path to the Ramboplay files in the list of volumes for `game` container in `docker-compose.yml` (default "RA2" in current directory). Build the docker image:
```bash
$ make docker
```

Create directory for wine files (default: wine-dir):
```bash
$ mkdir wine-dir
```

Run and open VNC instance (default port: 12001):
```bash
$ docker-compose up -d
$ vncviewer :12001
```
