variable "common_tags" {
  type        = map(string)
  description = "Implements the common tags scheme"
  default = {
    module = "terradform-azurerm-sql"
  }
}
