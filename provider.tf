# Install provider from terraform register, only available for version 0.13 and above.
terraform {
  required_providers {
    netapp-gcp = {
      source  = "NetApp/netapp-gcp"
      version = "23.4.0"
    }
  }
}

# Configure the NetApp_GCP Provider
provider "netapp-gcp" {
  project         = var.project_id
  service_account = var.service_account
}
