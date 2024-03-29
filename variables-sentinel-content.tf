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
  description = "Log sources retrieved in Microsoft Sentinel."
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

variable "rules_excluded" {
  type        = list(string)
  default     = []
  description = "Rules that will not be deployed in Microsoft Sentinel."
}
