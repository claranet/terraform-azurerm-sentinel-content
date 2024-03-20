variable "log_analytics_workspace_id" {
  type        = string
  description = "The Log Analytics Workspace ID."
}

variable "log_analytics_workspace_name" {
  type        = string
  description = "The Log Analytics Workspace name."
}

variable "log_sources" {
  type        = list(string)
  description = "Log sources retrieved in Microsoft Sentinel. Possible values are `azure_firewall`, `cef`, `cisco_meraki`, `entra_id`, `fortigate`, `gworkspace`, `m365`, `okta`, `sentinelone`, `syslog`, `ti`, `windows_security`, `xdr`, `zscaler_internet_access` and `zscaler_private_access`."
}

variable "solutions_enable" {
  type        = bool
  default     = true
  description = "Whether the Solutions should be deployed."
}

variable "rules_enable" {
  type        = bool
  default     = false
  description = "Whether the Rules should be deployed."
}
