# Helper script that removes just the kubernetes objects
#
# To invoke 'bash ./reset_k8s.bash'


set -x

APP_LABEL='owncloud'


k8s_objs='deployment,service,secrets,configmap,persistentvolumeclaim,persistentvolume'
kubectl delete $k8s_objs --selector app=$APP_LABEL
