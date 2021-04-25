resource "azurerm_mssql_server" "examplea" {
  #checkov:skip=CKV_AZURE_23:Deprecated test as separate resource
  #checkov:skip=CKV_AZURE_24:Deprecated test as separate resource
  #tfsec:ignore:AZU018
  name                          = var.server_name
  resource_group_name           = var.resource_group.name
  location                      = var.resource_group.location
  version                       = var.sql["version"]
  administrator_login           = var.sql["administrator_login"]
  administrator_login_password  = local.administrator_login_password
  minimum_tls_version           = var.minimum_tls_version
  public_network_access_enabled = var.sql["public_network_access_enabled"]

  identity {
    type = "SystemAssigned"
  }

  tags = var.common_tags
}

variable "minimum_tls_version" {
  default = "1.2"
}
