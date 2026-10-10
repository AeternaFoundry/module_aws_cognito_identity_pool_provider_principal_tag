variable "cognito_identity_pool_provider_principal_tags" {
  description = <<EOT
Map of cognito_identity_pool_provider_principal_tags, attributes below
Required:
    - identity_pool_id
    - identity_provider_name
Optional:
    - principal_tags
    - region
    - use_defaults
EOT

  type = map(object({
    identity_pool_id       = string
    identity_provider_name = string
    principal_tags         = optional(map(string))
    region                 = optional(string)
    use_defaults           = optional(bool)
  }))
  validation {
    condition = alltrue([
      for k, v in var.cognito_identity_pool_provider_principal_tags : (
        (length(v.identity_pool_id) >= 1 && length(v.identity_pool_id) <= 55) && (can(regex("^[\\w-]+:[0-9a-f-]+$", v.identity_pool_id)))
      )
    ])
    error_message = "all of: must be between 1 and 55 characters; see https://docs.aws.amazon.com/cognitoidentity/latest/APIReference/API_SetPrincipalTagAttributeMap.html#API_SetPrincipalTagAttributeMap_ResponseSyntax"
  }
  validation {
    condition = alltrue([
      for k, v in var.cognito_identity_pool_provider_principal_tags : (
        (length(v.identity_provider_name) >= 1 && length(v.identity_provider_name) <= 128)
      )
    ])
    error_message = "all of: must be between 1 and 128 characters"
  }
}

