resource "azurerm_monitor_diagnostic_setting" "main" {
  count                      = var.log_analytics_workspace_name != null || var.storage_account_name != null ? 1 : 0
  name                       = lower("${var.environment}-${var.frontdoor_name}-${var.region}-fd-diag")
  target_resource_id         = "${azurerm_frontdoor.main.id}"
  storage_account_id         = var.storage_account_name != null ? data.azurerm_storage_account.storage.0.id : null
  log_analytics_workspace_id = data.azurerm_log_analytics_workspace.law.0.id

  dynamic "log" {
    for_each = var.fd_diag_logs
    content {
      category = log.value
      enabled  = true

      retention_policy {
        enabled = false
        days    = 0
      }
    }
  }

  metric {
    category = "AllMetrics"

    retention_policy {
      enabled = false
      days    = 0
    }
  }

  lifecycle {
    ignore_changes = [log, metric]
  }

depends_on = [
  [ azurerm_frontdoor.main ]
]
}