variable "log_analytics_workspace_name" {
  type        = string
  description = "The Log Analytics Workspace name."
}

variable "log_sources" {
  type        = list(string)
  description = "Log sources retrieved in Microsoft Sentinel."
}
