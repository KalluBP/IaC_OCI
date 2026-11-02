output "identity_domain_groups" {
  description = "Created OCI Identity Domain groups."

  value = {
    for name, group in oci_identity_domains_group.groups :
    name => {
      id           = group.id
      ocid         = group.ocid
      display_name = group.display_name
    }
  }
}
