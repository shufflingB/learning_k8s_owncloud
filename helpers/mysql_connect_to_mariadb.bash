#!/bin/bash

# Helper script to connect to the running instance of MariaDB
# To invoke 'bash ./mysql_connect_to_mariadb.bash'

set -ex

# Does the job, but of necessity a bit ugly having to declare column header name and tell it no, don't actually want that ...
# 
podname=$(kubectl get pods --selector app=owncloud --output=custom-columns=NAME:.metadata.name --no-headers)
kubectl exec  --stdin --tty $podname --container mariadb -- /bin/bash  -c 'mysql -h 127.0.0.1 -u root -p$MYSQL_ROOT_PASSWORD'
