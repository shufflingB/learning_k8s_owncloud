## Requirements

1. A Unix(y) OS (tested on macOS) for helper bash scripts.
2. Instance of minikube with enough resources.

## How to run
In directory with README and yaml files.

1. `bash ./helpers/create_hostpath_dirs.bash`
1. `kubectl create -f .`


## Helper scripts
Other **rudimentary** scripts to be **used with caution**, that may be helpful in testing and debugging,  are in `./helpers` directory. To use, run them for either this or the `./helpers` directory.

- `./helpers/mysql_connect_to_mariadb.bash` - starts an interactive mysql client connected
  to the instance of mariadb running in the pod.
- `bash ./helpers/reset_k8s.bash` - removes just the Kubernetes stuff from the system.
- `bash ./helpers/zap_EVERYTHING.bash` - **blows EVERYTHING away** including any disk
  volumes that may have been created in minikube with `./create_hostpath_dirs.bash`
