variable "logic_app_workflows" {
  description = <<EOT
Map of logic_app_workflows, attributes below
Required:
    - location
    - name
    - resource_group_name
Optional:
    - enabled
    - integration_service_environment_id
    - logic_app_integration_account_id
    - parameters
    - tags
    - workflow_parameters
    - workflow_schema
    - workflow_version
    - access_control (block):
        - action (optional, block):
            - allowed_caller_ip_address_range (required)
        - content (optional, block):
            - allowed_caller_ip_address_range (required)
        - trigger (optional, block):
            - allowed_caller_ip_address_range (optional)
            - open_authentication_policy (optional, block):
                - claim (required, block):
                    - name (required)
                    - value (required)
                - name (required)
        - workflow_management (optional, block):
            - allowed_caller_ip_address_range (required)
    - identity (block):
        - identity_ids (optional)
        - type (required)
EOT

  type = map(object({
    location                           = string
    name                               = string
    resource_group_name                = string
    enabled                            = optional(bool) # Default: true
    integration_service_environment_id = optional(string)
    logic_app_integration_account_id   = optional(string)
    parameters                         = optional(map(string))
    tags                               = optional(map(string))
    workflow_parameters                = optional(map(string))
    workflow_schema                    = optional(string) # Default: "https://schema.management.azure.com/providers/Microsoft.Logic/schemas/2016-06-01/workflowdefinition.json#"
    workflow_version                   = optional(string) # Default: "1.0.0.0"
    access_control = optional(object({
      action = optional(object({
        allowed_caller_ip_address_range = set(string)
      }))
      content = optional(object({
        allowed_caller_ip_address_range = set(string)
      }))
      trigger = optional(object({
        allowed_caller_ip_address_range = optional(set(string))
        open_authentication_policy = optional(object({
          claim = object({
            name  = string
            value = string
          })
          name = string
        }))
      }))
      workflow_management = optional(object({
        allowed_caller_ip_address_range = set(string)
      }))
    }))
    identity = optional(object({
      identity_ids = optional(set(string))
      type         = string
    }))
  }))
}

