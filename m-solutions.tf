module "solutions" {
  count  = var.solutions_enable ? 1 : 0
  source = "./modules/solutions/"

  location            = var.location
  resource_group_name = var.resource_group_name

  log_analytics_workspace_name = var.log_analytics_workspace_name
  log_sources                  = var.log_sources
}
