# IAM User
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.7 |
| <a name="requirement_huaweicloud"></a> [huaweicloud](#requirement\_huaweicloud) | ~>1.63 |
| <a name="requirement_random"></a> [random](#requirement\_random) | ~>3.5 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_huaweicloud"></a> [huaweicloud](#provider\_huaweicloud) | ~>1.63 |
| <a name="provider_random"></a> [random](#provider\_random) | ~>3.5 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [huaweicloud_identity_access_key.main](https://registry.terraform.io/providers/huaweicloud/huaweicloud/latest/docs/resources/identity_access_key) | resource |
| [huaweicloud_identity_group.main](https://registry.terraform.io/providers/huaweicloud/huaweicloud/latest/docs/resources/identity_group) | resource |
| [huaweicloud_identity_group_membership.main](https://registry.terraform.io/providers/huaweicloud/huaweicloud/latest/docs/resources/identity_group_membership) | resource |
| [huaweicloud_identity_group_role_assignment.main](https://registry.terraform.io/providers/huaweicloud/huaweicloud/latest/docs/resources/identity_group_role_assignment) | resource |
| [huaweicloud_identity_user.main](https://registry.terraform.io/providers/huaweicloud/huaweicloud/latest/docs/resources/identity_user) | resource |
| [random_password.password](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password) | resource |
| [huaweicloud_identity_role.main](https://registry.terraform.io/providers/huaweicloud/huaweicloud/latest/docs/data-sources/identity_role) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_access_type"></a> [access\_type](#input\_access\_type) | Specifies the access type of the user. Available values are:<br><br>  * `default`: support both programmatic and management console access;<br>  * `programmatic`: only support programmatic access;<br>  * `console`: only support management console access. | `string` | `"programmatic"` | no |
| <a name="input_country_code"></a> [country\_code](#input\_country\_code) | Specifies the country code | `string` | `null` | no |
| <a name="input_description"></a> [description](#input\_description) | Specifies the description of the user | `string` | `null` | no |
| <a name="input_email"></a> [email](#input\_email) | Specifies the email address | `string` | `null` | no |
| <a name="input_enabled"></a> [enabled](#input\_enabled) | Specifies whether the user is enabled or disabled | `bool` | `true` | no |
| <a name="input_identity_roles"></a> [identity\_roles](#input\_identity\_roles) | Specifies the name of the identity groups<br>  List of available groups https://support.huaweicloud.com/intl/en-us/usermanual-permissions/iam_01_0001.html | `set(string)` | `[]` | no |
| <a name="input_name"></a> [name](#input\_name) | Specifies the name of the user | `string` | n/a | yes |
| <a name="input_password"></a> [password](#input\_password) | IAM User's password parameters | <pre>object({<br>    enable  = optional(bool, false)<br>    length  = optional(number, 20)<br>    special = optional(bool, false)<br>  })</pre> | `{}` | no |
| <a name="input_phone"></a> [phone](#input\_phone) | Specifies the mobile number | `string` | `null` | no |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | Specifies the project to assign the role in | `string` | `"all"` | no |
| <a name="input_pwd_reset"></a> [pwd\_reset](#input\_pwd\_reset) | Specifies whether or not the password should be reset | `bool` | `false` | no |
| <a name="input_secret_file"></a> [secret\_file](#input\_secret\_file) | Specifies the file name that can save access key and access secret key | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_access_key"></a> [access\_key](#output\_access\_key) | The access key ID |
| <a name="output_encrypted_secret"></a> [encrypted\_secret](#output\_encrypted\_secret) | The encrypted secret, base64 encoded |
| <a name="output_id"></a> [id](#output\_id) | The resource ID in UUID format |
| <a name="output_password"></a> [password](#output\_password) | The password of IAM User |
| <a name="output_secret_key"></a> [secret\_key](#output\_secret\_key) | The access secret key |
<!-- END_TF_DOCS -->