resource "azurerm_frontdoor_firewall_policy" "main" {
  name                              = "${var.frontdoor_firewall_policy_name}"
  resource_group_name               = "${data.azurerm_resource_group.rg.name}"
  enabled                           = "${var.azurerm_frontdoor_firewall_policy_enabled}"
  mode                              = "${var.azurerm_frontdoor_firewall_policy_mode}"
  redirect_url                      = "${var.azurerm_frontdoor_firewall_policy_redirect_url}"
  custom_block_response_status_code = "${var.azurerm_frontdoor_firewall_policy_custom_block_response_status_code}"
  custom_block_response_body        = "${var.azurerm_frontdoor_firewall_policy_custom_block_response_body}"

  managed_rule {
    type    = "DefaultRuleSet"
    version = "1.0"
  }
}