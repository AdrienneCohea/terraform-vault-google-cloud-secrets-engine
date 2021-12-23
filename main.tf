resource "vault_gcp_secret_backend" "endpoint" {
  path        = var.path
  credentials = var.credentials
  description = var.description
}

resource "vault_gcp_secret_roleset" "roles" {
  for_each = local.roles

  backend      = vault_gcp_secret_backend.endpoint.path
  project      = var.project
  token_scopes = ["https://www.googleapis.com/auth/cloud-platform"]
  roleset      = each.key
  secret_type  = each.value.secret_type

  binding {
    resource = each.value.binding_resource
    roles    = each.value.binding_roles
  }
}
