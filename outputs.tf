output "compliance_requirements_id" {
  description = "Map of id values across all compliance_requirements, keyed the same as var.compliance_requirements except keys with no id are omitted"
  value       = { for k, v in gitlab_compliance_requirement.compliance_requirements : k => v.id if v.id != null && length(v.id) > 0 }
}
output "compliance_requirements_description" {
  description = "Map of description values across all compliance_requirements, keyed the same as var.compliance_requirements except keys with no description are omitted"
  value       = { for k, v in gitlab_compliance_requirement.compliance_requirements : k => v.description if v.description != null && length(v.description) > 0 }
}
output "compliance_requirements_external_controls" {
  description = "Map of external_controls values across all compliance_requirements, keyed the same as var.compliance_requirements except keys with no external_controls are omitted"
  value       = { for k, v in gitlab_compliance_requirement.compliance_requirements : k => v.external_controls if v.external_controls != null && length(v.external_controls) > 0 }
}
output "compliance_requirements_framework_id" {
  description = "Map of framework_id values across all compliance_requirements, keyed the same as var.compliance_requirements except keys with no framework_id are omitted"
  value       = { for k, v in gitlab_compliance_requirement.compliance_requirements : k => v.framework_id if v.framework_id != null && length(v.framework_id) > 0 }
}
output "compliance_requirements_internal_controls" {
  description = "Map of internal_controls values across all compliance_requirements, keyed the same as var.compliance_requirements except keys with no internal_controls are omitted"
  value       = { for k, v in gitlab_compliance_requirement.compliance_requirements : k => v.internal_controls if v.internal_controls != null && length(v.internal_controls) > 0 }
}
output "compliance_requirements_name" {
  description = "Map of name values across all compliance_requirements, keyed the same as var.compliance_requirements except keys with no name are omitted"
  value       = { for k, v in gitlab_compliance_requirement.compliance_requirements : k => v.name if v.name != null && length(v.name) > 0 }
}
output "compliance_requirements_namespace_path" {
  description = "Map of namespace_path values across all compliance_requirements, keyed the same as var.compliance_requirements except keys with no namespace_path are omitted"
  value       = { for k, v in gitlab_compliance_requirement.compliance_requirements : k => v.namespace_path if v.namespace_path != null && length(v.namespace_path) > 0 }
}

