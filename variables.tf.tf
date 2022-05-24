###########################
# Common vars
###########################
variable "environment" {
  description = "Var used for backend container name key"
  type = string
  default = "dev"
}
variable "default_tags" {
  description = "A mapping of tags to assign to the resource."
  type = map
}
variable "region" {
  description = "Region in which resources are deployed"
  type = string
  default = "weu"
}
variable "subscription_id" {
  description = "Region in which resources are deployed"
  type = string
  
}
###########################
# Resource groups vars
###########################
variable "resource_group_location" {
  description = "The location/region where the Front Door is created. Changing this forces a new resource to be created."
  default = "West Europe"
  type = string
}
variable "resource_group_name" {
  description = "Specifies the name of the Resource Group in which the Front Door service should exist. Changing this forces a new resource to be created."
  type = string
}
############################
#FRONT DOOR variable
############################
variable "frontdoor_name" {
  description = "Specifies the name of the Front Door service. Must be globally unique. Changing this forces a new resource to be created."
  type = string
}
variable "frontdoor_firewall_policy_name" {
  description = "The name of the policy. Changing this forces a new resource to be created."
  type = string
  default = "Mainfdwafpolicy"
}
variable "azurerm_frontdoor_firewall_policy_mode" {
  description = "The firewall policy mode. Possible values are Detection, Prevention and defaults to Prevention."
  type = string
  default = "Detection"
}
variable "azurerm_frontdoor_firewall_policy_enabled" {
  description = "Is the rule is enabled or disabled? Defaults to true."
  type = bool
  default = true
}
variable "azurerm_frontdoor_firewall_policy_redirect_url" {
  description = "If action type is redirect, this field represents redirect URL for the client."
  type = string
  default = "https://www.contoso.com"
}
variable "azurerm_frontdoor_firewall_policy_custom_block_response_status_code" {
  description = "If a custom_rule block's action type is block, this is the response status code. Possible values are 200, 403, 405, 406, or 429."
  type = number
  default = 403
}
variable "azurerm_frontdoor_firewall_policy_custom_block_response_body" {
  description = "If a custom_rule block's action type is block, this is the response body. The body must be specified in base64 encoding."
  type = string
  default = "PCFET0NUWVBFIGh0bWw+DQo8aHRtbD4NCiAgPGhlYWQ+DQogICAgPHRpdGxlPkFjY2VzcyBkZW5pZWQhPC90aXRsZT4NCiAgICA8bWV0YSBjaGFyc2V0PSJ1dGYtOCI+DQogICAgPHN0eWxlPg0KICAgICAgYm9keSB7DQogICAgICAgIHRleHQtYWxpZ246IGNlbnRlcjsNCiAgICAgICAgZm9udC1mYW1pbHk6ICdOb2JpbGUnLCBhcmlhbCwgc2VyaWY7DQogICAgICAgIGZvbnQtc2l6ZTogMjRweDsNCiAgICAgICAgY29sb3I6ICMwMDA7DQogICAgICAgIHRleHQtc2hhZG93OiAtMC4xZW0gLTAuMWVtIDAuMWVtIHdoaXRlOw0KICAgICAgICBiYWNrZ3JvdW5kLWNvbG9yOiAjZmZmOw0KICAgICAgfQ0KICAgICAgYS5idXR0b24gew0KICAgICAgICBjb2xvcjogI2VlZTsNCiAgICAgICAgYmFja2dyb3VuZDogIzU1NTsNCiAgICAgICAgcGFkZGluZzogMHB4IDEycHg7DQogICAgICAgIGJvcmRlci1yYWRpdXM6IDE1cHg7DQogICAgICAgIHRleHQtc2hhZG93OiBub25lOw0KICAgICAgfQ0KICAgICAgYS5idXR0b246aG92ZXIgew0KICAgICAgICBjb2xvcjogI2ZmZjsNCiAgICAgICAgYmFja2dyb3VuZDogIzAwMDsNCiAgICAgIH0NCiAgICAgIGEgew0KICAgICAgICBjb2xvcjogIzc3NzsNCiAgICAgICAgdGV4dC1kZWNvcmF0aW9uOiBub25lOw0KICAgICAgICB0cmFuc2l0aW9uOiAwLjVzOw0KICAgICAgfQ0KICAgICAgYTpob3ZlciB7DQogICAgICAgIGNvbG9yOiAjMzMzOw0KICAgICAgfQ0KICAgICAgdWwgew0KICAgICAgICBkaXNwbGF5OiBpbmxpbmUtYmxvY2s7DQogICAgICAgICpkaXNwbGF5OiBpbmxpbmU7DQogICAgICB9DQogICAgICB1bCBsaSB7DQogICAgICAgICB0ZXh0LWFsaWduOiBsZWZ0Ow0KICAgICAgfQ0KICAgIDwvc3R5bGU+DQogIDwvaGVhZD4NCiAgPGJvZHk+DQogICAgPGgyPjxzcGFuIHN0eWxlPSJjb2xvcjogcmVkIj7iipY8L3NwYW4+IEFjY2VzcyBkZW5pZWQhPC9oMj4NCiAgICA8cD5UaGUgcmVxdWVzdGVkIFVSTCB3YXMgcmVqZWN0ZWQuPC9wPg0KICAgIDxwPkZvciBhZGRpdGlvbmFsIGluZm9ybWF0aW9uLCBwbGVhc2UgY29udGFjdCBzdXBwb3J0IGFuZCBwcm92aWRlIHRoZXNlIGluZm9ybWF0aW9uPC9wPg0KICAgIDx1bD4NCiAgICAgIDxsaT5WYWx1ZSBvZiBYLUF6dXJlLVJlZiBoZWFkZXI8L2xpPg0KICAgICAgPGxpPkRhdGU6IDxkaXYgc3R5bGU9ImRpc3BsYXk6IGlubGluZSIgaWQ9ImRhdGV0aW1lIj48L2Rpdj48L2xpPg0KICAgICAgPGxpPlVSTDogPGRpdiBzdHlsZT0iZGlzcGxheTogaW5saW5lIiBpZD0idXJsIj48L2Rpdj4NCiAgICA8L3VsPg0KICAgIDxmb290ZXI+DQogICAgICA8YSBjbGFzcz0iYnV0dG9uIiBocmVmPSJqYXZhc2NyaXB0OiBoaXN0b3J5LmJhY2soKTsiPmJhY2s8L2E+DQogICAgPC9mb290ZXI+DQogICAgPHNjcmlwdD4NCiAgICAgIHZhciB0b2RheSA9IG5ldyBEYXRlKCk7DQogICAgICBkb2N1bWVudC5nZXRFbGVtZW50QnlJZCgiZGF0ZXRpbWUiKS5pbm5lckhUTUwgPSB0b2RheS50b1VUQ1N0cmluZygpOw0KICAgICAgZG9jdW1lbnQuZ2V0RWxlbWVudEJ5SWQoInVybCIpLmlubmVySFRNTCA9IGRvY3VtZW50LlVSTDsNCiAgICA8L3NjcmlwdD4NCiAgPC9ib2R5Pg0KPC9odG1sPg0K"
}
variable "backend_pools" {
  description = "A map/dictionary of Backend Pool Names (key) to the Backend Pool ID (value)"
  type = list(object({
    name = string
    backend = object({
      address     = string
      host_header = string
      http_port   = number
      https_port  = number
      priority    = optional(number)
      weight      = optional(number)
    })
    load_balancing_name = string
    health_probe_name   = string
  }))
  default = []
}

variable "backend_pool_health_probes" {
  description = "A map/dictionary of Backend Pool Health Probe Names (key) to the Backend Pool Health Probe ID (value)"
  type = list(object({
    name                = string
    path                = optional(string)
    protocol            = optional(string)
    probe_method        = optional(string)
    interval_in_seconds = optional(number)
  }))
  default = []
}

variable "backend_pool_load_balancing" {
  description = "A map/dictionary of Backend Pool Load Balancing Setting Names (key) to the Backend Pool Load Balancing Setting ID (value)"
  type = list(object({
    name                            = string
    sample_size                     = optional(number)
    successful_samples_required     = optional(number)
    additional_latency_milliseconds = optional(number)
  }))
  default = []
}

variable "frontend_endpoints" {
  description = "A map/dictionary of Frontend Endpoint Names (key) to the Frontend Endpoint ID (value)"
  type = list(object({
    name                                    = string
    host_name                               = string
    session_affinity_enabled                = optional(bool)
    session_affinity_ttl_seconds            = optional(number)
    web_application_firewall_policy_link_id = optional(string)
    custom_https_configuration = optional(object({
      certificate_source                         = optional(string)
      azure_key_vault_certificate_vault_id       = optional(string)
      azure_key_vault_certificate_secret_name    = optional(string)
      azure_key_vault_certificate_secret_version = optional(string)
    }))
  }))
  default = []
}

variable "routing_rules" {
  description = "A map/dictionary of Routing Rule Names (key) to the Routing Rule ID (value)"
  type = list(object({
    name               = string
    frontend_endpoints = list(string)
    accepted_protocols = optional(list(string))
    patterns_to_match  = optional(list(string))
    forwarding_configuration = optional(object({
      backend_pool_name                     = string
      cache_enabled                         = optional(bool)
      cache_use_dynamic_compression         = optional(bool)
      cache_query_parameter_strip_directive = optional(string)
      cache_query_parameters                = optional(list(string))
      cache_duration                        = optional(string)
      custom_forwarding_path                = optional(string)
      forwarding_protocol                   = optional(string)
    }))
    redirect_configuration = optional(object({
      custom_host         = optional(string)
      redirect_protocol   = optional(string)
      redirect_type       = string
      custom_fragment     = optional(string)
      custom_path         = optional(string)
      custom_query_string = optional(string)
    }))
  }))
  default = []
}

variable "log_analytics_workspace_name" {
  description = "Name of log analytics workspace which will be used to store logs from FrontDoor"
  type = string
  default = null
}
variable "storage_account_name" {
  description = "Name of storage account which will be used to store logs from FrontDoor."
  type = string
  default = null
}
variable "fd_diag_logs" {
  description = "Frontdoor Monitoring Category details for Azure Diagnostic setting."
  default     = ["FrontdoorAccessLog", "FrontdoorWebApplicationFirewallLog"]
}