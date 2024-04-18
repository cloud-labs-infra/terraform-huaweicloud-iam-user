terraform {
  required_version = "~> 1.7"

  required_providers {
    huaweicloud = {
      source  = "huaweicloud/huaweicloud"
      version = "~>1.63"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.5"
    }
  }
}
