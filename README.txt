Requirements
1) Unixy OS (tested on macOS) for helper scripts
2) Instance of minikube with enough resources.

How to run
In directory with README and yaml files.
1) bash ./create_hostpath_dirs.bash
2) kubectl create -f .



Other scripts helpful in testing etc in ./helpers
- mysql_connect_to_mariadb.bash - starts a interactive mysql client connected
  to the mariadb.
- bash zap_EVERYTHING.bash - blows EVERYTHING away including the any disk
  volumes that may have been created with ./create_hostpath_dirs.bash
