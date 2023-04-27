resource "netapp-gcp_storage_pool" "test-storage-pool" {
  name                      = var.storage_pool_name
  region                    = var.region
  zone                      = var.zone
  secondary_zone            = var.storage_pool_secondary_zone == "" ? null : var.storage_pool_secondary_zone
  network                   = var.network_name
  global_ad_access          = var.storage_pool_global_ad_access
  size                      = var.storage_pool_size
  service_level             = var.storage_pool_service_level
  storage_class             = var.storage_pool_storage_class
  shared_vpc_project_number = var.shared_vpc_project_number == "" ? null : var.shared_vpc_project_number
  depends_on  = [module.network1]
  billing_label {
    key   = var.storage_pool_billing_label_key
    value = var.storage_pool_billing_label_value
  }
}

