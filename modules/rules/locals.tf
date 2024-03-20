resource "random_uuid" "rules" {
  for_each = toset(local.files)
}

locals {
  files = flatten([for log in var.log_sources : fileset(path.module, "${log}/*.json")])

  rule_uuids = tomap({
    for rule_name, obj in random_uuid.rules :
    rule_name => obj.result
  })
}
