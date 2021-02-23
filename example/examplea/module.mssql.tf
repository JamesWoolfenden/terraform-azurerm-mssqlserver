module "mssql" {
  source         = "../../"
  common_tags    = var.common_tags
  resource_group = azurerm_resource_group.examplea-mssql
  database_name  = "mydatabase"
}
