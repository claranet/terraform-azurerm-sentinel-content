resource "azapi_resource" "rules" {
  for_each = toset(local.files)

  type = "Microsoft.SecurityInsights/alertRules@2023-02-01-preview"

  name      = local.rule_uuids[each.key]
  parent_id = var.log_analytics_workspace_id

  body = file("${path.module}/${each.key}")
}
