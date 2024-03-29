resource "random_uuid" "rules" {
  for_each = toset(local.files)
}

locals {
  # Get all rule files
  all_files = flatten([for log in var.log_sources : fileset(path.module, "${log}/*.json")])

  # Get rules without excluded ones
  files = [for file in local.all_files : file if !contains(var.rules_excluded, split(".", basename(file))[0])]

  rule_uuids = tomap({
    for rule_name, obj in random_uuid.rules :
    rule_name => obj.result
  })
}
