variable "vault_address" {
  description = "Address of the Vault server"
  type        = string
}

variable "secret_path" {
  description = "Path where the secret will be stored in Vault"
  type        = string
}

variable "username" {
  description = "Username to store in the secret"
  type        = string
}

variable "password" {
  description = "Password to store in the secret"
  type        = string
}
