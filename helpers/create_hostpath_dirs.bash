# Helper script to create persistent volumes
# To invoke use 'bash hlpr_create_owncloud_hostpath_dir.bash'

set -ex

# Set the name of the yaml file where the PV is defined
# here.
PV_YAML_FILE="./owncloud_pv.yaml"

hostPath_paths=$(sed -n  "s/ *path: *\"\(.*\)\"/\1/p" $PV_YAML_FILE)
for path in ${hostPath_paths[@]}
do
  minikube ssh -- sudo mkdir -p $path    
done
