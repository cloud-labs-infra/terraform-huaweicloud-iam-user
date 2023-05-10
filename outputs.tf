output "id" {
  description = "The resource ID in UUID format"
  value       = huaweicloud_identity_user.main.id
}

output "password" {
  description = "The password of IAM User"
  sensitive   = true
  value       = var.password.enable ? random_password.password[0].result : null
}

output "access_key" {
  description = "The access key ID"
  sensitive   = true
  value       = huaweicloud_identity_access_key.main.id
}

output "secret_key" {
  description = "The access secret key"
  sensitive   = true
  value       = huaweicloud_identity_access_key.main.secret
}

output "encrypted_secret" {
  description = "The encrypted secret, base64 encoded"
  sensitive   = false
  value       = huaweicloud_identity_access_key.main.encrypted_secret
}
