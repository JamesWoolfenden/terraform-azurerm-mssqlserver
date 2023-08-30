output "database" {
  value = module.mssql.database
  sensitive = true
}

output "server" {
  value     = module.mssql.server
  sensitive = true
}

output "storage" {
  value     = module.mssql.storage
  sensitive = true
}
