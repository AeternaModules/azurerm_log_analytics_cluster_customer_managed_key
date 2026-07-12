output "log_analytics_cluster_customer_managed_keys_key_vault_key_id" {
  description = "Map of key_vault_key_id values across all log_analytics_cluster_customer_managed_keys, keyed the same as var.log_analytics_cluster_customer_managed_keys"
  value       = { for k, v in azurerm_log_analytics_cluster_customer_managed_key.log_analytics_cluster_customer_managed_keys : k => v.key_vault_key_id }
}
output "log_analytics_cluster_customer_managed_keys_log_analytics_cluster_id" {
  description = "Map of log_analytics_cluster_id values across all log_analytics_cluster_customer_managed_keys, keyed the same as var.log_analytics_cluster_customer_managed_keys"
  value       = { for k, v in azurerm_log_analytics_cluster_customer_managed_key.log_analytics_cluster_customer_managed_keys : k => v.log_analytics_cluster_id }
}

