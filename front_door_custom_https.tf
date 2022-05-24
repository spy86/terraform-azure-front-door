resource "azurerm_frontdoor_custom_https_configuration" "main" {
  for_each                          = { for fe in var.frontend_endpoints : fe.name => fe if try(fe["custom_https_configuration"], null) != null }
  frontend_endpoint_id              = format("%s/frontendEndpoints/%s", azurerm_frontdoor.main.id, each.key)
  custom_https_provisioning_enabled = true

  custom_https_configuration {
    certificate_source                         = try(each.value["custom_https_configuration"]["certificate_source"], "FrontDoor")
    azure_key_vault_certificate_vault_id       = try(each.value["custom_https_configuration"]["azure_key_vault_certificate_vault_id"], null)
    azure_key_vault_certificate_secret_name    = try(each.value["custom_https_configuration"]["azure_key_vault_certificate_secret_name"], null)
    azure_key_vault_certificate_secret_version = try(each.value["custom_https_configuration"]["azure_key_vault_certificate_secret_version"], null)
  }
}