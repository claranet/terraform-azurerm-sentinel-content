module "rules" {
  count  = var.rules_enable ? 1 : 0
  source = "./modules/rules/"

  log_analytics_workspace_id = var.log_analytics_workspace_id
  log_sources                = var.log_sources
}
