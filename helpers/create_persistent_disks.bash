# Helper script to create GCEPersistenDisks for ownCloud example
# To invoke 'bash create_persistent_disk.bash'

set -ex

gcloud compute disks create --size=1GB owncloud-config-disk
gcloud compute disks create --size=5GB owncloud-data-disk
gcloud compute disks create --size=2GB owncloud-apps-disk
gcloud compute disks create --size=10GB mariadb-owncloud-disk