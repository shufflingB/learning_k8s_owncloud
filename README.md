## Requirements
1. A Unix(y) OS (tested on macOS) for helper bash scripts.
2. Instance of minikube with enough resources.

## How to run
In directory with README and yaml files.

1. `bash ./create_hostpath_dirs.bash`
1. `kubectl create -f .`


## Helper scripts
Other scripts, more or less helpful in testing and debugging in `./helpers`. To use, run them for either this or the `./helpers` directory.

- `./mysql_connect_to_mariadb.bash` - starts an interactive mysql client connected
  to the instance of mariadb running in the pod.
- `bash zap_EVERYTHING.bash` - **blows EVERYTHING away** including the any disk
  volumes that may have been created with `./create_hostpath_dirs.bash`
