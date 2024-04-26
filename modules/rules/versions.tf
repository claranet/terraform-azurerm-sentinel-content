terraform {
  required_version = ">= 1.3"

  required_providers {
    azapi = {
      source  = "azure/azapi"
      version = "~> 1.11, < 1.13"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.6"
    }
  }
}
