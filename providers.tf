terraform {
  required_providers {
    # tflint-ignore: terraform_unused_required_providers
    azapi = {
      source  = "azure/azapi"
      version = "~> 2.0"
    }
    # tflint-ignore: terraform_unused_required_providers
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.31"
    }
    # tflint-ignore: terraform_unused_required_providers
    random = {
      source  = "hashicorp/random"
      version = "~> 3.6"
    }
  }
}
