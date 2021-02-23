resource "azurerm_mssql_database" "examplea" {
  name      = var.database_name
  server_id = azurerm_mssql_server.examplea.id
}
