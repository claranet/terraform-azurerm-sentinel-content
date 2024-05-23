# Microsoft Sentinel Content
[![Changelog](https://img.shields.io/badge/changelog-release-green.svg)](CHANGELOG.md) [![Notice](https://img.shields.io/badge/notice-copyright-yellow.svg)](NOTICE) [![Apache V2 License](https://img.shields.io/badge/license-Apache%20V2-orange.svg)](LICENSE) [![TF Registry](https://img.shields.io/badge/terraform-registry-blue.svg)](https://registry.terraform.io/modules/claranet/sentinel-content/azurerm/)

This module deploys [Microsoft Sentinel Solutions](https://learn.microsoft.com/en-us/azure/sentinel/sentinel-solutions) but also the rules embedded in the product solution.

Solutions and rules are directly retrieved from the [Microsoft Sentinel Content Hub catalog](https://learn.microsoft.com/en-us/azure/sentinel/sentinel-solutions-catalog).


__Current log sources supported__ :
- _aws_
- _azure\_firewall_
- _azure\_waf_
- _cef_
- _cisco\_meraki_
- _entra\_id_
- _fortigate_
- _gworkspace_
- _m365_
- _okta_
- _sentinelone_
- _syslog_
- _ti_
- _windows\_security_
- _xdr_
- _zscaler\_internet\_access_
- _zscaler\_private\_access_

These are the values that can be set in the `log_sources` variable.

> Some solutions don't embed rules.

<!-- BEGIN_TF_DOCS -->
## Global versioning rule for Claranet Azure modules

| Module version | Terraform version | AzureRM version |
| -------------- | ----------------- | --------------- |
| >= 7.x.x       | 1.3.x             | >= 3.0          |
| >= 6.x.x       | 1.x               | >= 3.0          |
| >= 5.x.x       | 0.15.x            | >= 2.0          |
| >= 4.x.x       | 0.13.x / 0.14.x   | >= 2.0          |
| >= 3.x.x       | 0.12.x            | >= 2.0          |
| >= 2.x.x       | 0.12.x            | < 2.0           |
| <  2.x.x       | 0.11.x            | < 2.0           |

## Contributing

If you want to contribute to this repository, feel free to use our [pre-commit](https://pre-commit.com/) git hook configuration
which will help you automatically update and format some files for you by enforcing our Terraform code module best-practices.

More details are available in the [CONTRIBUTING.md](./CONTRIBUTING.md#pull-request-process) file.

## Usage

This module is optimized to work with the [Claranet terraform-wrapper](https://github.com/claranet/terraform-wrapper) tool
which set some terraform variables in the environment needed by this module.
More details about variables set by the `terraform-wrapper` available in the [documentation](https://github.com/claranet/terraform-wrapper#environment).

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

module "sentinel_content" {
  source  = "claranet/sentinel-content/azurerm"
  version = "x.x.x"

  location            = module.azure_region.location
  resource_group_name = module.rg.resource_group_name

  log_analytics_workspace_id   = module.logs.log_analytics_workspace_id
  log_analytics_workspace_name = module.logs.log_analytics_workspace_name
  log_sources                  = ["entra_id", "ti", "xdr"]
}
```

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| rules | ./modules/rules/ | n/a |
| solutions | ./modules/solutions/ | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| location | Azure location. | `string` | n/a | yes |
| log\_analytics\_workspace\_id | The Log Analytics Workspace ID. | `string` | n/a | yes |
| log\_analytics\_workspace\_name | The Log Analytics Workspace name. | `string` | n/a | yes |
| log\_sources | Log sources retrieved in Microsoft Sentinel. | `list(string)` | n/a | yes |
| resource\_group\_name | Resource Group the resources will belong to | `string` | n/a | yes |
| rules\_enable | Whether the Rules should be deployed. | `bool` | `false` | no |
| rules\_excluded | Rules that will not be deployed in Microsoft Sentinel. | `list(string)` | `[]` | no |
| solutions\_enable | Whether the Solutions should be deployed. | `bool` | `true` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->

## Related documentation

Microsoft Sentinel Content Hub: [learn.microsoft.com/en-us/azure/sentinel/sentinel-solutions-catalog](https://learn.microsoft.com/en-us/azure/sentinel/sentinel-solutions-catalog)

Microsoft Sentinel Rules: [learn.microsoft.com/en-us/azure/sentinel/detect-threats-built-in](https://learn.microsoft.com/en-us/azure/sentinel/detect-threats-built-in)
