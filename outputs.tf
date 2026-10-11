output "apm_config_configs_id" {
  description = "Map of id values across all apm_config_configs, keyed the same as var.apm_config_configs except keys with no id are omitted"
  value       = { for k, v in oci_apm_config_config.apm_config_configs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "apm_config_configs_agent_version" {
  description = "Map of agent_version values across all apm_config_configs, keyed the same as var.apm_config_configs except keys with no agent_version are omitted"
  value       = { for k, v in oci_apm_config_config.apm_config_configs : k => v.agent_version if v.agent_version != null && length(v.agent_version) > 0 }
}
output "apm_config_configs_apm_domain_id" {
  description = "Map of apm_domain_id values across all apm_config_configs, keyed the same as var.apm_config_configs except keys with no apm_domain_id are omitted"
  value       = { for k, v in oci_apm_config_config.apm_config_configs : k => v.apm_domain_id if v.apm_domain_id != null && length(v.apm_domain_id) > 0 }
}
output "apm_config_configs_attach_install_dir" {
  description = "Map of attach_install_dir values across all apm_config_configs, keyed the same as var.apm_config_configs except keys with no attach_install_dir are omitted"
  value       = { for k, v in oci_apm_config_config.apm_config_configs : k => v.attach_install_dir if v.attach_install_dir != null && length(v.attach_install_dir) > 0 }
}
output "apm_config_configs_config" {
  description = "Map of config values across all apm_config_configs, keyed the same as var.apm_config_configs except keys with no config are omitted"
  value       = { for k, v in oci_apm_config_config.apm_config_configs : k => one(v.config) if v.config != null && length(v.config) > 0 }
}
output "apm_config_configs_config_type" {
  description = "Map of config_type values across all apm_config_configs, keyed the same as var.apm_config_configs except keys with no config_type are omitted"
  value       = { for k, v in oci_apm_config_config.apm_config_configs : k => v.config_type if v.config_type != null && length(v.config_type) > 0 }
}
output "apm_config_configs_created_by" {
  description = "Map of created_by values across all apm_config_configs, keyed the same as var.apm_config_configs except keys with no created_by are omitted"
  value       = { for k, v in oci_apm_config_config.apm_config_configs : k => v.created_by if v.created_by != null && length(v.created_by) > 0 }
}
output "apm_config_configs_defined_tags" {
  description = "Map of defined_tags values across all apm_config_configs, keyed the same as var.apm_config_configs except keys with no defined_tags are omitted"
  value       = { for k, v in oci_apm_config_config.apm_config_configs : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "apm_config_configs_description" {
  description = "Map of description values across all apm_config_configs, keyed the same as var.apm_config_configs except keys with no description are omitted"
  value       = { for k, v in oci_apm_config_config.apm_config_configs : k => v.description if v.description != null && length(v.description) > 0 }
}
output "apm_config_configs_dimensions" {
  description = "Map of dimensions values across all apm_config_configs, keyed the same as var.apm_config_configs except keys with no dimensions are omitted"
  value       = { for k, v in oci_apm_config_config.apm_config_configs : k => v.dimensions if v.dimensions != null && length(v.dimensions) > 0 }
}
output "apm_config_configs_display_name" {
  description = "Map of display_name values across all apm_config_configs, keyed the same as var.apm_config_configs except keys with no display_name are omitted"
  value       = { for k, v in oci_apm_config_config.apm_config_configs : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "apm_config_configs_etag" {
  description = "Map of etag values across all apm_config_configs, keyed the same as var.apm_config_configs except keys with no etag are omitted"
  value       = { for k, v in oci_apm_config_config.apm_config_configs : k => v.etag if v.etag != null && length(v.etag) > 0 }
}
output "apm_config_configs_filter_id" {
  description = "Map of filter_id values across all apm_config_configs, keyed the same as var.apm_config_configs except keys with no filter_id are omitted"
  value       = { for k, v in oci_apm_config_config.apm_config_configs : k => v.filter_id if v.filter_id != null && length(v.filter_id) > 0 }
}
output "apm_config_configs_filter_text" {
  description = "Map of filter_text values across all apm_config_configs, keyed the same as var.apm_config_configs except keys with no filter_text are omitted"
  value       = { for k, v in oci_apm_config_config.apm_config_configs : k => v.filter_text if v.filter_text != null && length(v.filter_text) > 0 }
}
output "apm_config_configs_freeform_tags" {
  description = "Map of freeform_tags values across all apm_config_configs, keyed the same as var.apm_config_configs except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_apm_config_config.apm_config_configs : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "apm_config_configs_group" {
  description = "Map of group values across all apm_config_configs, keyed the same as var.apm_config_configs except keys with no group are omitted"
  value       = { for k, v in oci_apm_config_config.apm_config_configs : k => v.group if v.group != null && length(v.group) > 0 }
}
output "apm_config_configs_in_use_by" {
  description = "Map of in_use_by values across all apm_config_configs, keyed the same as var.apm_config_configs except keys with no in_use_by are omitted"
  value       = { for k, v in oci_apm_config_config.apm_config_configs : k => v.in_use_by if v.in_use_by != null && length(v.in_use_by) > 0 }
}
output "apm_config_configs_management_agent_id" {
  description = "Map of management_agent_id values across all apm_config_configs, keyed the same as var.apm_config_configs except keys with no management_agent_id are omitted"
  value       = { for k, v in oci_apm_config_config.apm_config_configs : k => v.management_agent_id if v.management_agent_id != null && length(v.management_agent_id) > 0 }
}
output "apm_config_configs_match_agents_with_attribute_key" {
  description = "Map of match_agents_with_attribute_key values across all apm_config_configs, keyed the same as var.apm_config_configs except keys with no match_agents_with_attribute_key are omitted"
  value       = { for k, v in oci_apm_config_config.apm_config_configs : k => v.match_agents_with_attribute_key if v.match_agents_with_attribute_key != null && length(v.match_agents_with_attribute_key) > 0 }
}
output "apm_config_configs_match_agents_with_attribute_value" {
  description = "Map of match_agents_with_attribute_value values across all apm_config_configs, keyed the same as var.apm_config_configs except keys with no match_agents_with_attribute_value are omitted"
  value       = { for k, v in oci_apm_config_config.apm_config_configs : k => v.match_agents_with_attribute_value if v.match_agents_with_attribute_value != null && length(v.match_agents_with_attribute_value) > 0 }
}
output "apm_config_configs_metrics" {
  description = "Map of metrics values across all apm_config_configs, keyed the same as var.apm_config_configs except keys with no metrics are omitted"
  value       = { for k, v in oci_apm_config_config.apm_config_configs : k => v.metrics if v.metrics != null && length(v.metrics) > 0 }
}
output "apm_config_configs_namespace" {
  description = "Map of namespace values across all apm_config_configs, keyed the same as var.apm_config_configs except keys with no namespace are omitted"
  value       = { for k, v in oci_apm_config_config.apm_config_configs : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}
output "apm_config_configs_opc_dry_run" {
  description = "Map of opc_dry_run values across all apm_config_configs, keyed the same as var.apm_config_configs except keys with no opc_dry_run are omitted"
  value       = { for k, v in oci_apm_config_config.apm_config_configs : k => v.opc_dry_run if v.opc_dry_run != null && length(v.opc_dry_run) > 0 }
}
output "apm_config_configs_options" {
  description = "Map of options values across all apm_config_configs, keyed the same as var.apm_config_configs except keys with no options are omitted"
  value       = { for k, v in oci_apm_config_config.apm_config_configs : k => v.options if v.options != null && length(v.options) > 0 }
}
output "apm_config_configs_overrides" {
  description = "Map of overrides values across all apm_config_configs, keyed the same as var.apm_config_configs except keys with no overrides are omitted"
  value       = { for k, v in oci_apm_config_config.apm_config_configs : k => one(v.overrides) if v.overrides != null && length(v.overrides) > 0 }
}
output "apm_config_configs_process_filter" {
  description = "Map of process_filter values across all apm_config_configs, keyed the same as var.apm_config_configs except keys with no process_filter are omitted"
  value       = { for k, v in oci_apm_config_config.apm_config_configs : k => v.process_filter if v.process_filter != null && length(v.process_filter) > 0 }
}
output "apm_config_configs_rules" {
  description = "Map of rules values across all apm_config_configs, keyed the same as var.apm_config_configs except keys with no rules are omitted"
  value       = { for k, v in oci_apm_config_config.apm_config_configs : k => v.rules if v.rules != null && length(v.rules) > 0 }
}
output "apm_config_configs_run_as_user" {
  description = "Map of run_as_user values across all apm_config_configs, keyed the same as var.apm_config_configs except keys with no run_as_user are omitted"
  value       = { for k, v in oci_apm_config_config.apm_config_configs : k => v.run_as_user if v.run_as_user != null && length(v.run_as_user) > 0 }
}
output "apm_config_configs_service_name" {
  description = "Map of service_name values across all apm_config_configs, keyed the same as var.apm_config_configs except keys with no service_name are omitted"
  value       = { for k, v in oci_apm_config_config.apm_config_configs : k => v.service_name if v.service_name != null && length(v.service_name) > 0 }
}
output "apm_config_configs_time_created" {
  description = "Map of time_created values across all apm_config_configs, keyed the same as var.apm_config_configs except keys with no time_created are omitted"
  value       = { for k, v in oci_apm_config_config.apm_config_configs : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "apm_config_configs_time_updated" {
  description = "Map of time_updated values across all apm_config_configs, keyed the same as var.apm_config_configs except keys with no time_updated are omitted"
  value       = { for k, v in oci_apm_config_config.apm_config_configs : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}
output "apm_config_configs_updated_by" {
  description = "Map of updated_by values across all apm_config_configs, keyed the same as var.apm_config_configs except keys with no updated_by are omitted"
  value       = { for k, v in oci_apm_config_config.apm_config_configs : k => v.updated_by if v.updated_by != null && length(v.updated_by) > 0 }
}

