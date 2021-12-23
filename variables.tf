variable "path" {
  type        = string
  default     = "gcp"
  description = "API endpoint path for the secrets engine"
}

variable "description" {
  type        = string
  default     = "Google Cloud Platform secrets"
  description = "Description for the secrets engine"
}

variable "project" {
  type        = string
  description = "Google project name"
}

variable "credentials" {
  type        = string
  default     = null
  description = "Credentials to use for the integration."
}

variable "roles" {
  type = map(object({
    secret_type = string
    bindings = list(object({
      resource = string
      roles    = list(string)
    }))
  }))
  description = "Rolesets to configure for Google Cloud. For information about what to put here, especially IAM bindings https://www.vaultproject.io/docs/secrets/gcp#bindings"
}
