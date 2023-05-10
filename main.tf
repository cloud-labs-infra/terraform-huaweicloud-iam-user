resource "huaweicloud_identity_user" "main" {
  name         = var.name
  description  = var.description
  email        = var.email
  phone        = var.phone
  country_code = var.country_code
  password     = var.password.enable ? random_password.password[0].result : null
  pwd_reset    = var.pwd_reset
  enabled      = var.enabled
  access_type  = var.access_type
}


resource "random_password" "password" {
  count   = var.password.enable ? 1 : 0
  length  = var.password.length
  special = var.password.special
}


resource "huaweicloud_identity_access_key" "main" {
  user_id     = huaweicloud_identity_user.main.id
  secret_file = var.secret_file
}


data "huaweicloud_identity_role" "main" {
  for_each = var.identity_roles

  display_name = each.key
}


resource "huaweicloud_identity_group" "main" {
  name = var.name
}


resource "huaweicloud_identity_group_role_assignment" "main" {
  for_each = toset([for role in data.huaweicloud_identity_role.main : role.id])

  group_id   = huaweicloud_identity_group.main.id
  role_id    = each.key
  project_id = var.project_id
}


resource "huaweicloud_identity_group_membership" "main" {
  group = huaweicloud_identity_group.main.id
  users = [
    huaweicloud_identity_user.main.id
  ]
}
