# Helper script to rid of EVERYTHING related to owncloud deployment.
#
# Removes 
# 1) everything in kubernetes.
# 2) underlying PERSISTENT STORAGE LOCATIONS
#
# To invoke 'bash ./zap_EVERYTHING.bash'

set -x

PV_YAML_FILE="./owncloud_pv.yaml"
APP_LABEL='owncloud'


k8s_objs='deployment,service,secrets,configmap,persistentvolumeclaim,persistentvolume'
kubectl delete $k8s_objs --selector app=$APP_LABEL

# Remove any volumes that have been created
hostPath_paths=$(sed -n  "s/ *pdName: *\(.*\)/\1/p" $PV_YAML_FILE)
for path in ${hostPath_paths[@]}
do
  gcloud compute disks delete path
done