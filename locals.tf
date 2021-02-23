locals {
  administrator_login_password = var.administrator_login_password != "" ? var.administrator_login_password : random_password.examplea.result
}

resource "random_password" "examplea" {
  length = 16
}
