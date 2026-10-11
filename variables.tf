variable "apm_config_configs" {
  description = <<EOT
Map of apm_config_configs, attributes below
Required:
    - apm_domain_id
    - config_type
Optional:
    - agent_version
    - attach_install_dir
    - defined_tags
    - description
    - display_name
    - filter_id
    - filter_text
    - freeform_tags
    - group
    - management_agent_id
    - match_agents_with_attribute_value
    - namespace
    - opc_dry_run
    - options
    - process_filter
    - run_as_user
    - service_name
    - config (block):
        - config_map (optional, block):
            - body (optional)
            - content_type (optional)
            - file_name (optional)
    - dimensions (block):
        - name (optional)
        - value_source (optional)
    - in_use_by (block):
    - metrics (block):
        - description (optional)
        - name (optional)
        - unit (optional)
        - value_source (optional)
    - overrides (block):
        - override_list (optional, block):
            - agent_filter (optional)
            - override_map (optional)
    - rules (block):
        - display_name (optional)
        - filter_text (optional)
        - is_apply_to_error_spans (optional)
        - is_enabled (optional)
        - priority (optional)
        - satisfied_response_time (optional)
        - tolerating_response_time (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    apm_domain_id                     = string
    config_type                       = string
    agent_version                     = optional(string)
    attach_install_dir                = optional(string)
    defined_tags                      = optional(map(string))
    description                       = optional(string)
    display_name                      = optional(string)
    filter_id                         = optional(string)
    filter_text                       = optional(string)
    freeform_tags                     = optional(map(string))
    group                             = optional(string)
    management_agent_id               = optional(string)
    match_agents_with_attribute_value = optional(string)
    namespace                         = optional(string)
    opc_dry_run                       = optional(string)
    options                           = optional(string)
    process_filter                    = optional(list(string))
    run_as_user                       = optional(string)
    service_name                      = optional(string)
    config = optional(object({
      config_map = optional(list(object({
        body         = optional(string)
        content_type = optional(string)
        file_name    = optional(string)
      })))
    }))
    dimensions = optional(list(object({
      name         = optional(string)
      value_source = optional(string)
    })))
    in_use_by = optional(list(object({
    })))
    metrics = optional(list(object({
      description  = optional(string)
      name         = optional(string)
      unit         = optional(string)
      value_source = optional(string)
    })))
    overrides = optional(object({
      override_list = optional(list(object({
        agent_filter = optional(string)
        override_map = optional(map(string))
      })))
    }))
    rules = optional(list(object({
      display_name             = optional(string)
      filter_text              = optional(string)
      is_apply_to_error_spans  = optional(bool)
      is_enabled               = optional(bool)
      priority                 = optional(number)
      satisfied_response_time  = optional(number)
      tolerating_response_time = optional(number)
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.apm_config_configs : (
        contains([for v in ["AGENT", "APDEX", "MACS_APM_EXTENSION", "METRIC_GROUP", "OPTIONS", "SPAN_FILTER"] : lower(v)], lower(v.config_type))
      )
    ])
    error_message = "must be one of: \"AGENT\", \"APDEX\", \"MACS_APM_EXTENSION\", \"METRIC_GROUP\", \"OPTIONS\", \"SPAN_FILTER\""
  }
}

