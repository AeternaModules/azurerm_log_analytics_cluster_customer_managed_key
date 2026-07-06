output "log_analytics_cluster_customer_managed_keys" {
  description = "All log_analytics_cluster_customer_managed_key resources"
  value       = azurerm_log_analytics_cluster_customer_managed_key.log_analytics_cluster_customer_managed_keys
}
output "log_analytics_cluster_customer_managed_keys_key_vault_key_id" {
  description = "List of key_vault_key_id values across all log_analytics_cluster_customer_managed_keys"
  value       = [for k, v in azurerm_log_analytics_cluster_customer_managed_key.log_analytics_cluster_customer_managed_keys : v.key_vault_key_id]
}
output "log_analytics_cluster_customer_managed_keys_log_analytics_cluster_id" {
  description = "List of log_analytics_cluster_id values across all log_analytics_cluster_customer_managed_keys"
  value       = [for k, v in azurerm_log_analytics_cluster_customer_managed_key.log_analytics_cluster_customer_managed_keys : v.log_analytics_cluster_id]
}

