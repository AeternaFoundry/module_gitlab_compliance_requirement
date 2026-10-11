resource "gitlab_compliance_requirement" "compliance_requirements" {
  for_each = var.compliance_requirements

  description       = each.value.description
  framework_id      = each.value.framework_id
  name              = each.value.name
  namespace_path    = each.value.namespace_path
  external_controls = each.value.external_controls
  internal_controls = each.value.internal_controls
}

