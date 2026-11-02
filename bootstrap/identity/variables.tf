
variable "tenancy_ocid" {
  description = "OCI tenancy OCID."
  type        = string
  sensitive   = true
}

variable "user_ocid" {
  description = "OCI automation user OCID."
  type        = string
  sensitive   = true
}

variable "fingerprint" {
  description = "OCI API signing key fingerprint."
  type        = string
  sensitive   = true
}

variable "private_key" {
  description = "OCI API signing private key content."
  type        = string
  sensitive   = true
}

variable "private_key_password" {
  description = "Passphrase for the OCI API signing key."
  type        = string
  sensitive   = true
  default     = null
  nullable    = true
}

variable "region" {
  description = "OCI region."
  type        = string
}

variable "identity_domain_url" {
  description = "OCI Identity Domain endpoint."
  type        = string

  validation {
    condition     = can(regex("^https://", var.identity_domain_url))
    error_message = "The Identity Domain URL must use HTTPS."
  }
}

variable "groups" {
  description = "Map of OCI Identity Domain groups to create."

  type = map(object({
    description = string
  }))

  validation {
    condition     = length(var.groups) > 0
    error_message = "At least one Identity Domain group must be defined."
  }
}
