# terraform-vault-google-cloud-secrets-engine

Enables the Google Cloud secrets engine and optionally configures rolesets

## Example usage

```terraform
module "google-cloud-secrets-engine" {
  source  = "AdrienneCohea/google-cloud-secrets-engine/vault"
  version = ">= 0.0.2"

  project = "your-project"
  roles = {
    "consul-terraform-sync" = {
      secret_type = "service_account_key"
      bindings = [{
        resource = "//cloudresourcemanager.googleapis.com/projects/your-project"
        roles    = ["roles/dns.admin", ]
      }]
    }
  }
}
```
