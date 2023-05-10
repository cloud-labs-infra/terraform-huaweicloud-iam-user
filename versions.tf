terraform {
  required_version = "~> 1.4"

  required_providers {
    huaweicloud = {
      source  = "huaweicloud/huaweicloud"
      version = "~>1.47"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.5"
    }
  }
}
