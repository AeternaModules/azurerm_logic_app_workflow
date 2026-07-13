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
    enabled                            = optional(bool)
    integration_service_environment_id = optional(string)
    logic_app_integration_account_id   = optional(string)
    parameters                         = optional(map(string))
    tags                               = optional(map(string))
    workflow_parameters                = optional(map(string))
    workflow_schema                    = optional(string)
    workflow_version                   = optional(string)
    access_control = optional(object({
      action = optional(object({
        allowed_caller_ip_address_range = set(string)
      }))
      content = optional(object({
        allowed_caller_ip_address_range = set(string)
      }))
      trigger = optional(object({
        allowed_caller_ip_address_range = optional(set(string))
        open_authentication_policy = optional(list(object({
          claim = list(object({
            name  = string
            value = string
          }))
          name = string
        })))
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
  validation {
    condition = alltrue([
      for k, v in var.logic_app_workflows : (
        v.access_control == null || (v.access_control.trigger == null || (v.access_control.trigger.open_authentication_policy == null || alltrue([for item in v.access_control.trigger.open_authentication_policy : (length(item.claim) >= 1)])))
      )
    ])
    error_message = "Each claim list must contain at least 1 items"
  }
  # --- Unconfirmed validation candidates, derived from azurerm_logic_app_workflow's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    validation.All(...) - no translation rule yet, add one
  # path: location
  #   source:    location.EnhancedValidate: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: integration_service_environment_id
  #   source:    [from integrationserviceenvironments.ValidateIntegrationServiceEnvironmentID] !ok
  # path: integration_service_environment_id
  #   source:    [from integrationserviceenvironments.ValidateIntegrationServiceEnvironmentID] err != nil
  # path: access_control.action.allowed_caller_ip_address_range[*]
  #   source:    validation.Any(...) - no translation rule yet, add one
  # path: access_control.content.allowed_caller_ip_address_range[*]
  #   source:    validation.Any(...) - no translation rule yet, add one
  # path: access_control.trigger.allowed_caller_ip_address_range[*]
  #   source:    validation.Any(...) - no translation rule yet, add one
  # path: access_control.trigger.open_authentication_policy.name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: access_control.trigger.open_authentication_policy.claim.name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: access_control.trigger.open_authentication_policy.claim.value
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: access_control.workflow_management.allowed_caller_ip_address_range[*]
  #   source:    validation.Any(...) - no translation rule yet, add one
  # path: identity.type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: identity.identity_ids[*]
  #   source:    [from commonids.ValidateUserAssignedIdentityID] !ok
  # path: identity.identity_ids[*]
  #   source:    [from commonids.ValidateUserAssignedIdentityID] err != nil
  # path: logic_app_integration_account_id
  #   source:    [from integrationaccounts.ValidateIntegrationAccountID] !ok
  # path: logic_app_integration_account_id
  #   source:    [from integrationaccounts.ValidateIntegrationAccountID] err != nil
  # path: tags
  #   condition: length(value) <= 50
  #   message:   [from tags.Validate: invalid when len(value) > 50]
  #   source:    [from tags.Validate: invalid when len(value) > 50]
  # path: tags
  #   condition: length(value) <= 512
  #   message:   [from tags.Validate: invalid when len(value) > 512]
  #   source:    [from tags.Validate: invalid when len(value) > 512]
  # path: tags
  #   source:    [from tags.Validate] err != nil
  # path: tags
  #   condition: length(value) <= 256
  #   message:   [from tags.Validate: invalid when len(value) > 256]
  #   source:    [from tags.Validate: invalid when len(value) > 256]
}

