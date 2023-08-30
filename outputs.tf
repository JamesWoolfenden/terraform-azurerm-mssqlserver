output "database" {
  value = azurerm_mssql_database.examplea
  sensitive = true
}

output "server" {
  value     = azurerm_mssql_server.examplea
  sensitive = true
}

output "storage" {
  value     = azurerm_storage_account.examplea
  sensitive = true
}
