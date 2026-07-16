output "logic_app_workflows_id" {
  description = "Map of id values across all logic_app_workflows, keyed the same as var.logic_app_workflows"
  value       = { for k, v in azurerm_logic_app_workflow.logic_app_workflows : k => v.id if v.id != null && length(v.id) > 0 }
}
output "logic_app_workflows_access_control" {
  description = "Map of access_control values across all logic_app_workflows, keyed the same as var.logic_app_workflows"
  value       = { for k, v in azurerm_logic_app_workflow.logic_app_workflows : k => v.access_control if v.access_control != null && length(v.access_control) > 0 }
}
output "logic_app_workflows_access_endpoint" {
  description = "Map of access_endpoint values across all logic_app_workflows, keyed the same as var.logic_app_workflows"
  value       = { for k, v in azurerm_logic_app_workflow.logic_app_workflows : k => v.access_endpoint if v.access_endpoint != null && length(v.access_endpoint) > 0 }
}
output "logic_app_workflows_connector_endpoint_ip_addresses" {
  description = "Map of connector_endpoint_ip_addresses values across all logic_app_workflows, keyed the same as var.logic_app_workflows"
  value       = { for k, v in azurerm_logic_app_workflow.logic_app_workflows : k => v.connector_endpoint_ip_addresses if v.connector_endpoint_ip_addresses != null && length(v.connector_endpoint_ip_addresses) > 0 }
}
output "logic_app_workflows_connector_outbound_ip_addresses" {
  description = "Map of connector_outbound_ip_addresses values across all logic_app_workflows, keyed the same as var.logic_app_workflows"
  value       = { for k, v in azurerm_logic_app_workflow.logic_app_workflows : k => v.connector_outbound_ip_addresses if v.connector_outbound_ip_addresses != null && length(v.connector_outbound_ip_addresses) > 0 }
}
output "logic_app_workflows_enabled" {
  description = "Map of enabled values across all logic_app_workflows, keyed the same as var.logic_app_workflows"
  value       = { for k, v in azurerm_logic_app_workflow.logic_app_workflows : k => v.enabled if v.enabled != null }
}
output "logic_app_workflows_identity" {
  description = "Map of identity values across all logic_app_workflows, keyed the same as var.logic_app_workflows"
  value       = { for k, v in azurerm_logic_app_workflow.logic_app_workflows : k => v.identity if v.identity != null && length(v.identity) > 0 }
}
output "logic_app_workflows_integration_service_environment_id" {
  description = "Map of integration_service_environment_id values across all logic_app_workflows, keyed the same as var.logic_app_workflows"
  value       = { for k, v in azurerm_logic_app_workflow.logic_app_workflows : k => v.integration_service_environment_id if v.integration_service_environment_id != null && length(v.integration_service_environment_id) > 0 }
}
output "logic_app_workflows_location" {
  description = "Map of location values across all logic_app_workflows, keyed the same as var.logic_app_workflows"
  value       = { for k, v in azurerm_logic_app_workflow.logic_app_workflows : k => v.location if v.location != null && length(v.location) > 0 }
}
output "logic_app_workflows_logic_app_integration_account_id" {
  description = "Map of logic_app_integration_account_id values across all logic_app_workflows, keyed the same as var.logic_app_workflows"
  value       = { for k, v in azurerm_logic_app_workflow.logic_app_workflows : k => v.logic_app_integration_account_id if v.logic_app_integration_account_id != null && length(v.logic_app_integration_account_id) > 0 }
}
output "logic_app_workflows_name" {
  description = "Map of name values across all logic_app_workflows, keyed the same as var.logic_app_workflows"
  value       = { for k, v in azurerm_logic_app_workflow.logic_app_workflows : k => v.name if v.name != null && length(v.name) > 0 }
}
output "logic_app_workflows_parameters" {
  description = "Map of parameters values across all logic_app_workflows, keyed the same as var.logic_app_workflows"
  value       = { for k, v in azurerm_logic_app_workflow.logic_app_workflows : k => v.parameters if v.parameters != null && length(v.parameters) > 0 }
}
output "logic_app_workflows_resource_group_name" {
  description = "Map of resource_group_name values across all logic_app_workflows, keyed the same as var.logic_app_workflows"
  value       = { for k, v in azurerm_logic_app_workflow.logic_app_workflows : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "logic_app_workflows_tags" {
  description = "Map of tags values across all logic_app_workflows, keyed the same as var.logic_app_workflows"
  value       = { for k, v in azurerm_logic_app_workflow.logic_app_workflows : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "logic_app_workflows_workflow_endpoint_ip_addresses" {
  description = "Map of workflow_endpoint_ip_addresses values across all logic_app_workflows, keyed the same as var.logic_app_workflows"
  value       = { for k, v in azurerm_logic_app_workflow.logic_app_workflows : k => v.workflow_endpoint_ip_addresses if v.workflow_endpoint_ip_addresses != null && length(v.workflow_endpoint_ip_addresses) > 0 }
}
output "logic_app_workflows_workflow_outbound_ip_addresses" {
  description = "Map of workflow_outbound_ip_addresses values across all logic_app_workflows, keyed the same as var.logic_app_workflows"
  value       = { for k, v in azurerm_logic_app_workflow.logic_app_workflows : k => v.workflow_outbound_ip_addresses if v.workflow_outbound_ip_addresses != null && length(v.workflow_outbound_ip_addresses) > 0 }
}
output "logic_app_workflows_workflow_parameters" {
  description = "Map of workflow_parameters values across all logic_app_workflows, keyed the same as var.logic_app_workflows"
  value       = { for k, v in azurerm_logic_app_workflow.logic_app_workflows : k => v.workflow_parameters if v.workflow_parameters != null && length(v.workflow_parameters) > 0 }
}
output "logic_app_workflows_workflow_schema" {
  description = "Map of workflow_schema values across all logic_app_workflows, keyed the same as var.logic_app_workflows"
  value       = { for k, v in azurerm_logic_app_workflow.logic_app_workflows : k => v.workflow_schema if v.workflow_schema != null && length(v.workflow_schema) > 0 }
}
output "logic_app_workflows_workflow_version" {
  description = "Map of workflow_version values across all logic_app_workflows, keyed the same as var.logic_app_workflows"
  value       = { for k, v in azurerm_logic_app_workflow.logic_app_workflows : k => v.workflow_version if v.workflow_version != null && length(v.workflow_version) > 0 }
}

