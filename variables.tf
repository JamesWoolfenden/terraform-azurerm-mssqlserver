variable "common_tags" {
  description = "This is to help you add tags to your cloud objects"
  type        = map(any)
}

variable "resource_group" {

}

variable "account_name" {
  type    = string
  default = "exampleaauditlogs"
}

variable "account_replication_type" {
  type    = string
  default = "LRS"
}

variable "account_tier" {
  type    = string
  default = "Standard"
}

variable "administrator_login_password" {
  type      = string
  default   = ""
  sensitive = true
}

variable "sql" {
  default = {
    name                          = "mymssqlserver"
    version                       = "12.0"
    administrator_login           = "supaman"
    public_network_access_enabled = false
  }
}

variable "audit_retention_in_days" {
  type        = number
  description = "Retention period for Audit logs in days"
  default     = 90
}

variable "database_name" {
  type = string
}

variable "server_name" {
  type    = string
  default = "exampleamssqlserver"
}
