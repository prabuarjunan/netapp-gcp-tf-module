output "gcp_cvs_storage_pool_id" {
  description = "Storage Pool ID for GCP-NetApp -- Cloud Volume Service"
  value       = netapp-gcp_storage_pool.test-storage-pool.id
}
