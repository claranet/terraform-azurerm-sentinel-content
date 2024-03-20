variable "location" {
  description = "Azure location."
  type        = string
}

variable "resource_group_name" {
  description = "Resource Group the resources will belong to"
  type        = string
}

variable "log_analytics_workspace_name" {
  type        = string
  description = "The Log Analytics Workspace name."
}

variable "log_sources" {
  type        = list(string)
  description = "Log sources retrieved in Microsoft Sentinel. Possible values are `azure_firewall`, `cef`, `cisco_meraki`, `entra_id`, `fortigate`, `gworkspace`, `m365`, `okta`, `sentinelone`, `syslog`, `ti`, `windows_security`, `xdr`, `zscaler_internet_access` and `zscaler_private_access`."
}
