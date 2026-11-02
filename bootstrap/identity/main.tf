
resource "oci_identity_domains_group" "groups" {
  for_each = var.groups

  idcs_endpoint = var.identity_domain_url

  display_name = each.key

  schemas = [
    "urn:ietf:params:scim:schemas:core:2.0:Group",
    "urn:ietf:params:scim:schemas:oracle:idcs:extension:group:Group"
  ]

  urnietfparamsscimschemasoracleidcsextensiongroup_group {
    description = each.value.description
  }
}
