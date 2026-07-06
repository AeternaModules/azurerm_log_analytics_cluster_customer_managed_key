variable "log_analytics_cluster_customer_managed_keys" {
  description = <<EOT
Map of log_analytics_cluster_customer_managed_keys, attributes below
Required:
    - key_vault_key_id
    - log_analytics_cluster_id
EOT

  type = map(object({
    key_vault_key_id         = string
    log_analytics_cluster_id = string
  }))
  # --- Unconfirmed validation candidates, derived from azurerm_log_analytics_cluster_customer_managed_key's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: log_analytics_cluster_id
  #   source:    [from clusters.ValidateClusterID] !ok
  # path: log_analytics_cluster_id
  #   source:    [from clusters.ValidateClusterID] err != nil
  # path: key_vault_key_id
  #   source:    [from keyvault.ValidateNestedItemID] !ok
  # path: key_vault_key_id
  #   source:    [from keyvault.ValidateNestedItemID] err != nil
}

