resource "random_uuid" "main" {
  for_each = toset(local.files)
}

moved {
  from = random_uuid.rules
  to   = random_uuid.main
}

resource "azapi_resource" "main" {
  for_each = toset(local.files)

  type = "Microsoft.SecurityInsights/alertRules@2025-01-01-preview"

  name      = local.rule_uuids[each.key]
  parent_id = var.log_analytics_workspace_id

  body = jsondecode(file("${path.module}/${each.key}"))
}

moved {
  from = azapi_resource.rules
  to   = azapi_resource.main
}
