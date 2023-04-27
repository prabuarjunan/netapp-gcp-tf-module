# netapp-gcp provider configuration details
project_id      = "cv-solution-architect-lab"
service_account = "test-tf-cvs-sa@cv-solution-architect-lab.iam.gserviceaccount.com"

# netapp-gcp cvs storage pool inputs
storage_pool_name             = "example_ha_pool"
region                        = "us-east1"
zone                          = "us-east1-b"
network_name                  = "ncv-vpc"
storage_pool_global_ad_access = true
storage_pool_size             = 1024
storage_pool_service_level    = "StandardSW"
storage_pool_storage_class    = "software"
