data "azurerm_client_config" "current" {}

data "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
}
data "azurerm_log_analytics_workspace" "law" {
  count               = var.log_analytics_workspace_name != null ? 1 : 0
  name                = var.log_analytics_workspace_name
  resource_group_name = var.resource_group_name
}
data "azurerm_storage_account" "storage" {
  count               = var.storage_account_name != null ? 1 : 0
  name                = var.storage_account_name
  resource_group_name = var.resource_group_name
}