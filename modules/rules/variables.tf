variable "log_analytics_workspace_id" {
  description = "The Log Analytics Workspace ID."
  type        = string
}

variable "log_sources" {
  type        = list(string)
  description = "Log sources retrieved in Microsoft Sentinel."
}

variable "rules_excluded" {
  type        = list(string)
  default     = []
  description = "Rules that will not be deployed in Microsoft Sentinel."
}
