terraform {
  required_version = ">= 1.10.0, < 2.0.0"

  required_providers {
    oci = {
      source  = "oracle/oci"
      version = ">= 7.0.0, < 10.0.0"
    }
  }
}
