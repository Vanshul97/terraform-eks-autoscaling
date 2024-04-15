provider "vault" {
  address = var.vault_address
}

resource "vault_generic_secret" "example_secret" {
  path = var.secret_path
  data = {
    username = var.username
    password = var.password
  }
}
