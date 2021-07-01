resource "azurerm_storage_account" "examplea" {
  # checkov:skip=CKV2_AZURE_8: todo
  # checkov:skip=CKV_AZURE_43: todo
  # checkov:skip=CKV2_AZURE_18: todo
  # checkov:skip=CKV2_AZURE_1: todo
  # checkov:skip=CKV_AZURE_35: todo
  # checkov:skip=CKV_AZURE_33: todo

  name                      = var.account_name
  account_replication_type  = var.account_replication_type
  resource_group_name       = var.resource_group.name
  account_tier              = var.account_tier
  location                  = var.resource_group.location
  enable_https_traffic_only = true
  min_tls_version           = "TLS1_2"
  #tfsec:ignore:AZU012
  network_rules {
    bypass = [
      "AzureServices",
    ]
    default_action = "Allow"
  }
  tags = var.common_tags
}
