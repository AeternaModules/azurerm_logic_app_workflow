output "logic_app_workflows" {
  description = "All logic_app_workflow resources"
  value       = azurerm_logic_app_workflow.logic_app_workflows
}
output "logic_app_workflows_access_control" {
  description = "List of access_control values across all logic_app_workflows"
  value       = [for k, v in azurerm_logic_app_workflow.logic_app_workflows : v.access_control]
}
output "logic_app_workflows_access_endpoint" {
  description = "List of access_endpoint values across all logic_app_workflows"
  value       = [for k, v in azurerm_logic_app_workflow.logic_app_workflows : v.access_endpoint]
}
output "logic_app_workflows_connector_endpoint_ip_addresses" {
  description = "List of connector_endpoint_ip_addresses values across all logic_app_workflows"
  value       = [for k, v in azurerm_logic_app_workflow.logic_app_workflows : v.connector_endpoint_ip_addresses]
}
output "logic_app_workflows_connector_outbound_ip_addresses" {
  description = "List of connector_outbound_ip_addresses values across all logic_app_workflows"
  value       = [for k, v in azurerm_logic_app_workflow.logic_app_workflows : v.connector_outbound_ip_addresses]
}
output "logic_app_workflows_enabled" {
  description = "List of enabled values across all logic_app_workflows"
  value       = [for k, v in azurerm_logic_app_workflow.logic_app_workflows : v.enabled]
}
output "logic_app_workflows_identity" {
  description = "List of identity values across all logic_app_workflows"
  value       = [for k, v in azurerm_logic_app_workflow.logic_app_workflows : v.identity]
}
output "logic_app_workflows_integration_service_environment_id" {
  description = "List of integration_service_environment_id values across all logic_app_workflows"
  value       = [for k, v in azurerm_logic_app_workflow.logic_app_workflows : v.integration_service_environment_id]
}
output "logic_app_workflows_location" {
  description = "List of location values across all logic_app_workflows"
  value       = [for k, v in azurerm_logic_app_workflow.logic_app_workflows : v.location]
}
output "logic_app_workflows_logic_app_integration_account_id" {
  description = "List of logic_app_integration_account_id values across all logic_app_workflows"
  value       = [for k, v in azurerm_logic_app_workflow.logic_app_workflows : v.logic_app_integration_account_id]
}
output "logic_app_workflows_name" {
  description = "List of name values across all logic_app_workflows"
  value       = [for k, v in azurerm_logic_app_workflow.logic_app_workflows : v.name]
}
output "logic_app_workflows_parameters" {
  description = "List of parameters values across all logic_app_workflows"
  value       = [for k, v in azurerm_logic_app_workflow.logic_app_workflows : v.parameters]
}
output "logic_app_workflows_resource_group_name" {
  description = "List of resource_group_name values across all logic_app_workflows"
  value       = [for k, v in azurerm_logic_app_workflow.logic_app_workflows : v.resource_group_name]
}
output "logic_app_workflows_tags" {
  description = "List of tags values across all logic_app_workflows"
  value       = [for k, v in azurerm_logic_app_workflow.logic_app_workflows : v.tags]
}
output "logic_app_workflows_workflow_endpoint_ip_addresses" {
  description = "List of workflow_endpoint_ip_addresses values across all logic_app_workflows"
  value       = [for k, v in azurerm_logic_app_workflow.logic_app_workflows : v.workflow_endpoint_ip_addresses]
}
output "logic_app_workflows_workflow_outbound_ip_addresses" {
  description = "List of workflow_outbound_ip_addresses values across all logic_app_workflows"
  value       = [for k, v in azurerm_logic_app_workflow.logic_app_workflows : v.workflow_outbound_ip_addresses]
}
output "logic_app_workflows_workflow_parameters" {
  description = "List of workflow_parameters values across all logic_app_workflows"
  value       = [for k, v in azurerm_logic_app_workflow.logic_app_workflows : v.workflow_parameters]
}
output "logic_app_workflows_workflow_schema" {
  description = "List of workflow_schema values across all logic_app_workflows"
  value       = [for k, v in azurerm_logic_app_workflow.logic_app_workflows : v.workflow_schema]
}
output "logic_app_workflows_workflow_version" {
  description = "List of workflow_version values across all logic_app_workflows"
  value       = [for k, v in azurerm_logic_app_workflow.logic_app_workflows : v.workflow_version]
}

