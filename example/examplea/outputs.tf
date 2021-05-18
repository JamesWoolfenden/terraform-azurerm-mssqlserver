output "database" {
  value = module.mssql.database
}

output "server" {
  value     = module.mssql.server
  sensitive = true
}

output "storage" {
  value     = module.mssql.storage
  sensitive = true
}
