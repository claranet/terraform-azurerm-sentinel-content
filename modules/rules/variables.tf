variable "log_analytics_workspace_id" {
  description = "The Log Analytics Workspace ID."
  type        = string
}

variable "log_sources" {
  type        = list(string)
  description = "Log sources retrieved in Microsoft Sentinel."
}
