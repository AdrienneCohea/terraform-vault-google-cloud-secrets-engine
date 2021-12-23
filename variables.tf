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
