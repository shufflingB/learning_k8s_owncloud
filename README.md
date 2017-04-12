## Requirements

1. A Unix(y) OS (tested on macOS) for helper bash scripts.
2. A Google GKE Kubernetes cluster instance with enough resources.

## How to run
In directory with README and yaml files.

1. `bash ./helpers/create_persistent_disks.bash`
2. Follow the instructions in owncloud_cm.yaml to reserve a static IP address from GKE, then.
    1. Update owncloud_cm.yaml with that IP address.
    2. Update owncloud_svc.yaml with that IP address
4. Follow instruction in owncloud_secrets.yaml to add new passwords.
5. `kubectl create -f .`
6. ... wait ... for it to come up

## Viewing results

Open a browser window at the IP address you reserved in step 2.

Log in as username 'admin' with the password that was set in step 3 above.

## Helper scripts
Other **rudimentary** scripts to be **used with caution**, that may be helpful in testing and debugging,  are in `./helpers` directory. To use, run them for either this or the `./helpers` directory.

- `./helpers/mysql_connect_to_mariadb.bash` - starts an interactive mysql client connected
  to the instance of mariadb running in the pod.
- `bash ./helpers/reset_k8s.bash` - removes just the Kubernetes stuff from the system.
- `bash ./helpers/zap_EVERYTHING.bash` - **blows EVERYTHING away** including any disk
  volumes that may have been created in minikube with `./create_persistent_disks.bash`

## More info

https://taskudo.info/blog/