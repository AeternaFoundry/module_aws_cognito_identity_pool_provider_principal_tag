output "cognito_identity_pool_provider_principal_tags_id" {
  description = "Map of id values across all cognito_identity_pool_provider_principal_tags, keyed the same as var.cognito_identity_pool_provider_principal_tags"
  value       = { for k, v in aws_cognito_identity_pool_provider_principal_tag.cognito_identity_pool_provider_principal_tags : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cognito_identity_pool_provider_principal_tags_identity_pool_id" {
  description = "Map of identity_pool_id values across all cognito_identity_pool_provider_principal_tags, keyed the same as var.cognito_identity_pool_provider_principal_tags"
  value       = { for k, v in aws_cognito_identity_pool_provider_principal_tag.cognito_identity_pool_provider_principal_tags : k => v.identity_pool_id if v.identity_pool_id != null && length(v.identity_pool_id) > 0 }
}
output "cognito_identity_pool_provider_principal_tags_identity_provider_name" {
  description = "Map of identity_provider_name values across all cognito_identity_pool_provider_principal_tags, keyed the same as var.cognito_identity_pool_provider_principal_tags"
  value       = { for k, v in aws_cognito_identity_pool_provider_principal_tag.cognito_identity_pool_provider_principal_tags : k => v.identity_provider_name if v.identity_provider_name != null && length(v.identity_provider_name) > 0 }
}
output "cognito_identity_pool_provider_principal_tags_principal_tags" {
  description = "Map of principal_tags values across all cognito_identity_pool_provider_principal_tags, keyed the same as var.cognito_identity_pool_provider_principal_tags"
  value       = { for k, v in aws_cognito_identity_pool_provider_principal_tag.cognito_identity_pool_provider_principal_tags : k => v.principal_tags if v.principal_tags != null && length(v.principal_tags) > 0 }
}
output "cognito_identity_pool_provider_principal_tags_region" {
  description = "Map of region values across all cognito_identity_pool_provider_principal_tags, keyed the same as var.cognito_identity_pool_provider_principal_tags"
  value       = { for k, v in aws_cognito_identity_pool_provider_principal_tag.cognito_identity_pool_provider_principal_tags : k => v.region if v.region != null && length(v.region) > 0 }
}
output "cognito_identity_pool_provider_principal_tags_use_defaults" {
  description = "Map of use_defaults values across all cognito_identity_pool_provider_principal_tags, keyed the same as var.cognito_identity_pool_provider_principal_tags"
  value       = { for k, v in aws_cognito_identity_pool_provider_principal_tag.cognito_identity_pool_provider_principal_tags : k => v.use_defaults if v.use_defaults != null }
}

