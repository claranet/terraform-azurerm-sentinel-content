resource "azurerm_resource_group_template_deployment" "solutions" {

  for_each = toset(var.log_sources)

  name                = "deployment-solutions-${each.key}"
  resource_group_name = var.resource_group_name
  deployment_mode     = "Incremental"

  parameters_content = jsonencode({
    "location" = {
      value = var.location
    },
    "workspace-location" = {
      value = var.location
    },
    "workspace" = {
      value = var.log_analytics_workspace_name
    }
  })

  template_content = file("${path.module}/templates/${each.key}.json")

  lifecycle {
    ignore_changes = [parameters_content]
  }
}
