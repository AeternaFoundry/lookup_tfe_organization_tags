variable "organization_tags_lookup" {
  description = <<EOT
Map of organization_tags_lookup, attributes below
Optional:
    - organization
EOT

  type = map(object({
    organization = optional(string)
  }))
}

