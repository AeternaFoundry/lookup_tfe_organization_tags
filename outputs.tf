output "organization_tags_lookup_id" {
  description = "Map of id values across all organization_tags_lookup, keyed the same as var.organization_tags_lookup except keys with no id are omitted"
  value       = { for k, v in data.tfe_organization_tags.organization_tags_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "organization_tags_lookup_organization" {
  description = "Map of organization values across all organization_tags_lookup, keyed the same as var.organization_tags_lookup except keys with no organization are omitted"
  value       = { for k, v in data.tfe_organization_tags.organization_tags_lookup : k => v.organization if v.organization != null && length(v.organization) > 0 }
}
output "organization_tags_lookup_tags" {
  description = "Map of tags values across all organization_tags_lookup, keyed the same as var.organization_tags_lookup except keys with no tags are omitted"
  value       = { for k, v in data.tfe_organization_tags.organization_tags_lookup : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

