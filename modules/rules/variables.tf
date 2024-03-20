variable "log_analytics_workspace_id" {
  description = "The Log Analytics Workspace ID."
  type        = string
}

variable "log_sources" {
  type        = list(string)
  description = "Log sources retrieved in Microsoft Sentinel. Possible values are `azure_firewall`, `cef`, `cisco_meraki`, `entra_id`, `fortigate`, `gworkspace`, `m365`, `okta`, `sentinelone`, `syslog`, `ti`, `windows_security`, `xdr`, `zscaler_internet_access` and `zscaler_private_access`."
}
