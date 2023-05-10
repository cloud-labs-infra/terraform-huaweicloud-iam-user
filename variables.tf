variable "name" {
  description = "Specifies the name of the user"
  type        = string
  nullable    = false
  validation {
    condition     = length(var.name) >= 5 && length(var.name) <= 32
    error_message = "The user name consists of 5 to 32 characters."
  }
}

variable "description" {
  description = "Specifies the description of the user"
  type        = string
  default     = null
}

variable "email" {
  description = "Specifies the email address"
  type        = string
  default     = null
}

variable "country_code" {
  description = "Specifies the country code"
  type        = string
  default     = null
}

variable "phone" {
  description = "Specifies the mobile number"
  type        = string
  default     = null
}

variable "password" {
  description = "IAM User's password parameters"
  type = object({
    enable  = optional(bool, false)
    length  = optional(number, 20)
    special = optional(bool, false)
  })
  default = {}
}

variable "pwd_reset" {
  description = "Specifies whether or not the password should be reset"
  type        = bool
  default     = false
}

variable "enabled" {
  description = "Specifies whether the user is enabled or disabled"
  type        = bool
  default     = true
}

variable "access_type" {
  description = <<DES
  Specifies the access type of the user. Available values are:

  * `default`: support both programmatic and management console access;
  * `programmatic`: only support programmatic access;
  * `console`: only support management console access.
  DES
  type        = string
  default     = "programmatic"
  validation {
    condition     = contains(["default", "programmatic", "console"], var.access_type)
    error_message = "The valid value are 'default', 'programmatic' and 'console'."
  }
}

variable "secret_file" {
  description = "Specifies the file name that can save access key and access secret key"
  type        = string
  default     = null
}

variable "identity_roles" {
  description = <<DES
  Specifies the name of the identity groups
  List of available groups https://support.huaweicloud.com/intl/en-us/usermanual-permissions/iam_01_0001.html
  DES
  type        = set(string)
  default     = []
}

variable "project_id" {
  description = "Specifies the project to assign the role in"
  type        = string
  default     = "all"
}
