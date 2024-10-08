# Microsoft Sentinel Rules

This module deploys [Microsoft Sentinel Rules](https://learn.microsoft.com/en-us/azure/sentinel/detect-threats-built-in) embedded in the product solution.

Some rules have been modified to fix errors in the original template.

Values that can be set in the `log_source` variable are listed [here](../../README.md).

<!-- BEGIN_TF_DOCS -->
## Global versioning rule for Claranet Azure modules

| Module version | Terraform version | OpenTofu version | AzureRM version |
| -------------- | ----------------- | ---------------- | --------------- |
| >= 8.x.x       | **Unverified**    | 1.8.x            | >= 4.0          |
| >= 7.x.x       | 1.3.x             |                  | >= 3.0          |
| >= 6.x.x       | 1.x               |                  | >= 3.0          |
| >= 5.x.x       | 0.15.x            |                  | >= 2.0          |
| >= 4.x.x       | 0.13.x / 0.14.x   |                  | >= 2.0          |
| >= 3.x.x       | 0.12.x            |                  | >= 2.0          |
| >= 2.x.x       | 0.12.x            |                  | < 2.0           |
| <  2.x.x       | 0.11.x            |                  | < 2.0           |

## Contributing

If you want to contribute to this repository, feel free to use our [pre-commit](https://pre-commit.com/) git hook configuration
which will help you automatically update and format some files for you by enforcing our Terraform code module best-practices.

More details are available in the [CONTRIBUTING.md](../../CONTRIBUTING.md#pull-request-process) file.

## Usage

This module is optimized to work with the [Claranet terraform-wrapper](https://github.com/claranet/terraform-wrapper) tool
which set some terraform variables in the environment needed by this module.
More details about variables set by the `terraform-wrapper` available in the [documentation](https://github.com/claranet/terraform-wrapper#environment).

⚠️ Since modules version v8.0.0, we do not maintain/check anymore the compatibility with
[Hashicorp Terraform](https://github.com/hashicorp/terraform/). Instead, we recommend to use [OpenTofu](https://github.com/opentofu/opentofu/).

```hcl
module "azure_region" {
  source  = "claranet/regions/azurerm"
  version = "x.x.x"

  azure_region = var.azure_region
}

module "rg" {
  source  = "claranet/rg/azurerm"
  version = "x.x.x"

  location    = module.azure_region.location
  client_name = var.client_name
  environment = var.environment
  stack       = var.stack
}

module "logs" {
  source  = "claranet/run/azurerm//modules/logs"
  version = "x.x.x"

  location            = module.azure_region.location
  location_short      = module.azure_region.location_short
  resource_group_name = module.rg.resource_group_name

  client_name = var.client_name
  environment = var.environment
  stack       = var.stack
}

module "sentinel" {
  source  = "claranet/sentinel/azurerm"
  version = "x.x.x"

  log_analytics_workspace_id = module.logs.log_analytics_workspace_id
  logs_destinations_ids      = [module.logs.log_analytics_workspace_id]

  data_connector_aad_enabled = true
}

module "rules" {
  source  = "claranet/sentinel-content/azurerm//modules/rules"
  version = "x.x.x"

  log_analytics_workspace_id = module.logs.log_analytics_workspace_id
  log_sources                = ["entra_id", "ti", "xdr"]
}
```

## Providers

| Name | Version |
|------|---------|
| azapi | ~> 1.11, < 1.13 |
| random | ~> 3.6 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azapi_resource.rules](https://registry.terraform.io/providers/azure/azapi/latest/docs/resources/resource) | resource |
| [random_uuid.rules](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/uuid) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| log\_analytics\_workspace\_id | The Log Analytics Workspace ID. | `string` | n/a | yes |
| log\_sources | Log sources retrieved in Microsoft Sentinel. | `list(string)` | n/a | yes |
| rules\_excluded | Rules that will not be deployed in Microsoft Sentinel. | `list(string)` | `[]` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
