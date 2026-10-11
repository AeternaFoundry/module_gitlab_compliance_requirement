variable "compliance_requirements" {
  description = <<EOT
Map of compliance_requirements, attributes below
Required:
    - description
    - framework_id
    - name
    - namespace_path
Optional:
    - external_controls
    - internal_controls
EOT

  type = map(object({
    description    = string
    framework_id   = string
    name           = string
    namespace_path = string
    external_controls = optional(set(object({
      external_control_name = optional(string)
      external_url          = string
      ping_enabled          = bool
      secret_token          = string
    })))
    internal_controls = optional(set(object({
      expression = object({
        field    = string
        operator = string
        value    = string
      })
      name = string
    })))
  }))
}

