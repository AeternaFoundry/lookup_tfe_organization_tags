data "tfe_organization_tags" "organization_tags_lookup" {
  for_each = var.organization_tags_lookup

  organization = each.value.organization
}

