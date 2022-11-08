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

Run and open VNC viewer (default port: 12001):
```bash
$ docker-compose up -d
$ vncviewer :12001
```

# Debugging

Get PID of `gamemd-spawn.exe`:
```bash
$ docker-compose exec game winedbg --command "info proc"
```

```
 pid      threads  executable (all id:s are in hex)
 0000007c 1        'conhost.exe'
 00000030 2        'services.exe'
 00000020 5        'gamemd-spawn.exe'
 0000003c 2        \_ 'explorer.exe'
```

Start debugger:
```bash
$ docker-compose exec game winedbg --gdb 32
```
