output "secret_path" {
  description = "Path where the secret is stored in Vault"
  value       = vault_generic_secret.example_secret.path
}
