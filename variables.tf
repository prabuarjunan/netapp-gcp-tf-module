variable "project_id" {
  description = "Provide Project name "
  type        = string
}

variable "service_account" {
  description = "Provider Service Account"
  type        = string
}

variable "name_prefix" {
  description = <<-EOT
    An optional name for all VM and disk resources. 
    If not supplied, `deployment_name` will be used. 
    When `name_prefix` is supplied, and `add_deployment_name_before_prefix` is set, 
    then resources are named by "<`deployment_name`>-<`name_prefix`>-<#>".
    EOT
  type        = string
  default     = null
}

variable "add_deployment_name_before_prefix" {
  description = <<-EOT
    If true, the names of VMs and disks will always be prefixed with `deployment_name` to enable uniqueness across deployments.
    See `name_prefix` for further details on resource naming behavior.
    EOT
  type        = bool
  default     = false
}

variable "deployment_name" {
  description = "Name of the deployment, will optionally be used name resources according to `name_prefix`"
  type        = string
  default     = null
}

variable "labels" {
  description = "Labels to add to the instances. Key-value pairs."
  type        = map(string)
  default = {
    "author" = "johndoe"
  }
}

variable "network_self_link" {
  description = "The self link of the network to attach the VM."
  type        = string
  default     = "default"
}

variable "subnetwork_self_link" {
  description = "The self link of the subnetwork to attach the VM."
  type        = string
  default     = null
}

variable "storage_pool_name" {
  description = "Name of the storage pool."
  type        = string
}

variable "region" {
  description = "The region where the storage pool to be created."
  type        = string
}

variable "zone" {
  description = "Location of the pool."
  type        = string
}

variable "storage_pool_secondary_zone" {
  description = "Secondary zone if service level is ZoneRedundantStandardSW."
  default     = ""
  type        = string
}

variable "network_name" {
  description = "Network name."
  type        = string
}

variable "storage_pool_global_ad_access" {
  description = "Enables global access to Active Directory controllers outside of the pools region."
  default     = false
  type        = string
}

variable "storage_pool_size" {
  description = "Storage pool size."
  default     = 1024
  type        = string
}

variable "storage_pool_service_level" {
  description = "StandardSW or ZoneRedundantStandardSW."
  default     = "StandardSW"
  type        = string
}

variable "storage_pool_storage_class" {
  description = "Software."
  type        = string
}

variable "storage_pool_billing_label_key" {
  description = "Must be a minimum length of 1 character and a maximum length of 63 characters, and cannot be empty. Can contain only lowercase letters, numeric characters, underscores, and dashes. All characters must use UTF-8 encoding, and international characters are allowed. Must start with a lowercase letter or international character."
  default     = "terraform_author"
  type        = string
}

variable "storage_pool_billing_label_value" {
  description = "Can be empty, and have a maximum length of 63 characters. Can contain only lowercase letters, numeric characters, underscores, and dashes. All characters must use UTF-8 encoding, and international characters are allowed."
  default     = "terraform_user"
  type        = string
}

variable "shared_vpc_project_number" {
  description = "The host project number when deploying in a shared VPC service project."
  type        = string
  default     = ""
}
