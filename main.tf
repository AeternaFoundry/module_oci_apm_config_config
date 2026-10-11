resource "oci_apm_config_config" "apm_config_configs" {
  for_each = var.apm_config_configs

  apm_domain_id                     = each.value.apm_domain_id
  config_type                       = each.value.config_type
  agent_version                     = each.value.agent_version
  attach_install_dir                = each.value.attach_install_dir
  defined_tags                      = each.value.defined_tags
  description                       = each.value.description
  display_name                      = each.value.display_name
  filter_id                         = each.value.filter_id
  filter_text                       = each.value.filter_text
  freeform_tags                     = each.value.freeform_tags
  group                             = each.value.group
  management_agent_id               = each.value.management_agent_id
  match_agents_with_attribute_value = each.value.match_agents_with_attribute_value
  namespace                         = each.value.namespace
  opc_dry_run                       = each.value.opc_dry_run
  options                           = each.value.options
  process_filter                    = each.value.process_filter
  run_as_user                       = each.value.run_as_user
  service_name                      = each.value.service_name

  dynamic "config" {
    for_each = each.value.config != null ? [each.value.config] : []
    content {
      dynamic "config_map" {
        for_each = config.value.config_map != null ? config.value.config_map : []
        content {
          body         = config_map.value.body
          content_type = config_map.value.content_type
          file_name    = config_map.value.file_name
        }
      }
    }
  }

  dynamic "dimensions" {
    for_each = each.value.dimensions != null ? each.value.dimensions : []
    content {
      name         = dimensions.value.name
      value_source = dimensions.value.value_source
    }
  }

  dynamic "in_use_by" {
    for_each = each.value.in_use_by != null ? each.value.in_use_by : []
    content {
    }
  }

  dynamic "metrics" {
    for_each = each.value.metrics != null ? each.value.metrics : []
    content {
      description  = metrics.value.description
      name         = metrics.value.name
      unit         = metrics.value.unit
      value_source = metrics.value.value_source
    }
  }

  dynamic "overrides" {
    for_each = each.value.overrides != null ? [each.value.overrides] : []
    content {
      dynamic "override_list" {
        for_each = overrides.value.override_list != null ? overrides.value.override_list : []
        content {
          agent_filter = override_list.value.agent_filter
          override_map = override_list.value.override_map
        }
      }
    }
  }

  dynamic "rules" {
    for_each = each.value.rules != null ? each.value.rules : []
    content {
      display_name             = rules.value.display_name
      filter_text              = rules.value.filter_text
      is_apply_to_error_spans  = rules.value.is_apply_to_error_spans
      is_enabled               = rules.value.is_enabled
      priority                 = rules.value.priority
      satisfied_response_time  = rules.value.satisfied_response_time
      tolerating_response_time = rules.value.tolerating_response_time
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

