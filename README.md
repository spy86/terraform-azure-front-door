<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.15 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 3.3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.3.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_frontdoor.main](https://registry.terraform.io/providers/hashicorp/azurerm/3.3.0/docs/resources/frontdoor) | resource |
| [azurerm_frontdoor_custom_https_configuration.main](https://registry.terraform.io/providers/hashicorp/azurerm/3.3.0/docs/resources/frontdoor_custom_https_configuration) | resource |
| [azurerm_frontdoor_firewall_policy.main](https://registry.terraform.io/providers/hashicorp/azurerm/3.3.0/docs/resources/frontdoor_firewall_policy) | resource |
| [azurerm_monitor_diagnostic_setting.main](https://registry.terraform.io/providers/hashicorp/azurerm/3.3.0/docs/resources/monitor_diagnostic_setting) | resource |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/3.3.0/docs/data-sources/client_config) | data source |
| [azurerm_log_analytics_workspace.law](https://registry.terraform.io/providers/hashicorp/azurerm/3.3.0/docs/data-sources/log_analytics_workspace) | data source |
| [azurerm_resource_group.rg](https://registry.terraform.io/providers/hashicorp/azurerm/3.3.0/docs/data-sources/resource_group) | data source |
| [azurerm_storage_account.storage](https://registry.terraform.io/providers/hashicorp/azurerm/3.3.0/docs/data-sources/storage_account) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_azurerm_frontdoor_firewall_policy_custom_block_response_body"></a> [azurerm\_frontdoor\_firewall\_policy\_custom\_block\_response\_body](#input\_azurerm\_frontdoor\_firewall\_policy\_custom\_block\_response\_body) | If a custom\_rule block's action type is block, this is the response body. The body must be specified in base64 encoding. | `string` | `"PCFET0NUWVBFIGh0bWw+DQo8aHRtbD4NCiAgPGhlYWQ+DQogICAgPHRpdGxlPkFjY2VzcyBkZW5pZWQhPC90aXRsZT4NCiAgICA8bWV0YSBjaGFyc2V0PSJ1dGYtOCI+DQogICAgPHN0eWxlPg0KICAgICAgYm9keSB7DQogICAgICAgIHRleHQtYWxpZ246IGNlbnRlcjsNCiAgICAgICAgZm9udC1mYW1pbHk6ICdOb2JpbGUnLCBhcmlhbCwgc2VyaWY7DQogICAgICAgIGZvbnQtc2l6ZTogMjRweDsNCiAgICAgICAgY29sb3I6ICMwMDA7DQogICAgICAgIHRleHQtc2hhZG93OiAtMC4xZW0gLTAuMWVtIDAuMWVtIHdoaXRlOw0KICAgICAgICBiYWNrZ3JvdW5kLWNvbG9yOiAjZmZmOw0KICAgICAgfQ0KICAgICAgYS5idXR0b24gew0KICAgICAgICBjb2xvcjogI2VlZTsNCiAgICAgICAgYmFja2dyb3VuZDogIzU1NTsNCiAgICAgICAgcGFkZGluZzogMHB4IDEycHg7DQogICAgICAgIGJvcmRlci1yYWRpdXM6IDE1cHg7DQogICAgICAgIHRleHQtc2hhZG93OiBub25lOw0KICAgICAgfQ0KICAgICAgYS5idXR0b246aG92ZXIgew0KICAgICAgICBjb2xvcjogI2ZmZjsNCiAgICAgICAgYmFja2dyb3VuZDogIzAwMDsNCiAgICAgIH0NCiAgICAgIGEgew0KICAgICAgICBjb2xvcjogIzc3NzsNCiAgICAgICAgdGV4dC1kZWNvcmF0aW9uOiBub25lOw0KICAgICAgICB0cmFuc2l0aW9uOiAwLjVzOw0KICAgICAgfQ0KICAgICAgYTpob3ZlciB7DQogICAgICAgIGNvbG9yOiAjMzMzOw0KICAgICAgfQ0KICAgICAgdWwgew0KICAgICAgICBkaXNwbGF5OiBpbmxpbmUtYmxvY2s7DQogICAgICAgICpkaXNwbGF5OiBpbmxpbmU7DQogICAgICB9DQogICAgICB1bCBsaSB7DQogICAgICAgICB0ZXh0LWFsaWduOiBsZWZ0Ow0KICAgICAgfQ0KICAgIDwvc3R5bGU+DQogIDwvaGVhZD4NCiAgPGJvZHk+DQogICAgPGgyPjxzcGFuIHN0eWxlPSJjb2xvcjogcmVkIj7iipY8L3NwYW4+IEFjY2VzcyBkZW5pZWQhPC9oMj4NCiAgICA8cD5UaGUgcmVxdWVzdGVkIFVSTCB3YXMgcmVqZWN0ZWQuPC9wPg0KICAgIDxwPkZvciBhZGRpdGlvbmFsIGluZm9ybWF0aW9uLCBwbGVhc2UgY29udGFjdCBzdXBwb3J0IGFuZCBwcm92aWRlIHRoZXNlIGluZm9ybWF0aW9uPC9wPg0KICAgIDx1bD4NCiAgICAgIDxsaT5WYWx1ZSBvZiBYLUF6dXJlLVJlZiBoZWFkZXI8L2xpPg0KICAgICAgPGxpPkRhdGU6IDxkaXYgc3R5bGU9ImRpc3BsYXk6IGlubGluZSIgaWQ9ImRhdGV0aW1lIj48L2Rpdj48L2xpPg0KICAgICAgPGxpPlVSTDogPGRpdiBzdHlsZT0iZGlzcGxheTogaW5saW5lIiBpZD0idXJsIj48L2Rpdj4NCiAgICA8L3VsPg0KICAgIDxmb290ZXI+DQogICAgICA8YSBjbGFzcz0iYnV0dG9uIiBocmVmPSJqYXZhc2NyaXB0OiBoaXN0b3J5LmJhY2soKTsiPmJhY2s8L2E+DQogICAgPC9mb290ZXI+DQogICAgPHNjcmlwdD4NCiAgICAgIHZhciB0b2RheSA9IG5ldyBEYXRlKCk7DQogICAgICBkb2N1bWVudC5nZXRFbGVtZW50QnlJZCgiZGF0ZXRpbWUiKS5pbm5lckhUTUwgPSB0b2RheS50b1VUQ1N0cmluZygpOw0KICAgICAgZG9jdW1lbnQuZ2V0RWxlbWVudEJ5SWQoInVybCIpLmlubmVySFRNTCA9IGRvY3VtZW50LlVSTDsNCiAgICA8L3NjcmlwdD4NCiAgPC9ib2R5Pg0KPC9odG1sPg0K"` | no |
| <a name="input_azurerm_frontdoor_firewall_policy_custom_block_response_status_code"></a> [azurerm\_frontdoor\_firewall\_policy\_custom\_block\_response\_status\_code](#input\_azurerm\_frontdoor\_firewall\_policy\_custom\_block\_response\_status\_code) | If a custom\_rule block's action type is block, this is the response status code. Possible values are 200, 403, 405, 406, or 429. | `number` | `403` | no |
| <a name="input_azurerm_frontdoor_firewall_policy_enabled"></a> [azurerm\_frontdoor\_firewall\_policy\_enabled](#input\_azurerm\_frontdoor\_firewall\_policy\_enabled) | Is the rule is enabled or disabled? Defaults to true. | `bool` | `true` | no |
| <a name="input_azurerm_frontdoor_firewall_policy_mode"></a> [azurerm\_frontdoor\_firewall\_policy\_mode](#input\_azurerm\_frontdoor\_firewall\_policy\_mode) | The firewall policy mode. Possible values are Detection, Prevention and defaults to Prevention. | `string` | `"Detection"` | no |
| <a name="input_azurerm_frontdoor_firewall_policy_redirect_url"></a> [azurerm\_frontdoor\_firewall\_policy\_redirect\_url](#input\_azurerm\_frontdoor\_firewall\_policy\_redirect\_url) | If action type is redirect, this field represents redirect URL for the client. | `string` | `"https://www.contoso.com"` | no |
| <a name="input_backend_pool_health_probes"></a> [backend\_pool\_health\_probes](#input\_backend\_pool\_health\_probes) | A map/dictionary of Backend Pool Health Probe Names (key) to the Backend Pool Health Probe ID (value) | <pre>list(object({<br>    name                = string<br>    path                = optional(string)<br>    protocol            = optional(string)<br>    probe_method        = optional(string)<br>    interval_in_seconds = optional(number)<br>  }))</pre> | `[]` | no |
| <a name="input_backend_pool_load_balancing"></a> [backend\_pool\_load\_balancing](#input\_backend\_pool\_load\_balancing) | A map/dictionary of Backend Pool Load Balancing Setting Names (key) to the Backend Pool Load Balancing Setting ID (value) | <pre>list(object({<br>    name                            = string<br>    sample_size                     = optional(number)<br>    successful_samples_required     = optional(number)<br>    additional_latency_milliseconds = optional(number)<br>  }))</pre> | `[]` | no |
| <a name="input_backend_pools"></a> [backend\_pools](#input\_backend\_pools) | A map/dictionary of Backend Pool Names (key) to the Backend Pool ID (value) | <pre>list(object({<br>    name = string<br>    backend = object({<br>      address     = string<br>      host_header = string<br>      http_port   = number<br>      https_port  = number<br>      priority    = optional(number)<br>      weight      = optional(number)<br>    })<br>    load_balancing_name = string<br>    health_probe_name   = string<br>  }))</pre> | `[]` | no |
| <a name="input_default_tags"></a> [default\_tags](#input\_default\_tags) | A mapping of tags to assign to the resource. | `map` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | Var used for backend container name key | `string` | `"dev"` | no |
| <a name="input_fd_diag_logs"></a> [fd\_diag\_logs](#input\_fd\_diag\_logs) | Frontdoor Monitoring Category details for Azure Diagnostic setting. | `list` | <pre>[<br>  "FrontdoorAccessLog",<br>  "FrontdoorWebApplicationFirewallLog"<br>]</pre> | no |
| <a name="input_frontdoor_firewall_policy_name"></a> [frontdoor\_firewall\_policy\_name](#input\_frontdoor\_firewall\_policy\_name) | The name of the policy. Changing this forces a new resource to be created. | `string` | `"Mainfdwafpolicy"` | no |
| <a name="input_frontdoor_name"></a> [frontdoor\_name](#input\_frontdoor\_name) | Specifies the name of the Front Door service. Must be globally unique. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_frontend_endpoints"></a> [frontend\_endpoints](#input\_frontend\_endpoints) | A map/dictionary of Frontend Endpoint Names (key) to the Frontend Endpoint ID (value) | <pre>list(object({<br>    name                                    = string<br>    host_name                               = string<br>    session_affinity_enabled                = optional(bool)<br>    session_affinity_ttl_seconds            = optional(number)<br>    web_application_firewall_policy_link_id = optional(string)<br>    custom_https_configuration = optional(object({<br>      certificate_source                         = optional(string)<br>      azure_key_vault_certificate_vault_id       = optional(string)<br>      azure_key_vault_certificate_secret_name    = optional(string)<br>      azure_key_vault_certificate_secret_version = optional(string)<br>    }))<br>  }))</pre> | `[]` | no |
| <a name="input_log_analytics_workspace_name"></a> [log\_analytics\_workspace\_name](#input\_log\_analytics\_workspace\_name) | Name of log analytics workspace which will be used to store logs from FrontDoor | `string` | `null` | no |
| <a name="input_region"></a> [region](#input\_region) | Region in which resources are deployed | `string` | `"weu"` | no |
| <a name="input_resource_group_location"></a> [resource\_group\_location](#input\_resource\_group\_location) | The location/region where the Front Door is created. Changing this forces a new resource to be created. | `string` | `"West Europe"` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | Specifies the name of the Resource Group in which the Front Door service should exist. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_routing_rules"></a> [routing\_rules](#input\_routing\_rules) | A map/dictionary of Routing Rule Names (key) to the Routing Rule ID (value) | <pre>list(object({<br>    name               = string<br>    frontend_endpoints = list(string)<br>    accepted_protocols = optional(list(string))<br>    patterns_to_match  = optional(list(string))<br>    forwarding_configuration = optional(object({<br>      backend_pool_name                     = string<br>      cache_enabled                         = optional(bool)<br>      cache_use_dynamic_compression         = optional(bool)<br>      cache_query_parameter_strip_directive = optional(string)<br>      cache_query_parameters                = optional(list(string))<br>      cache_duration                        = optional(string)<br>      custom_forwarding_path                = optional(string)<br>      forwarding_protocol                   = optional(string)<br>    }))<br>    redirect_configuration = optional(object({<br>      custom_host         = optional(string)<br>      redirect_protocol   = optional(string)<br>      redirect_type       = string<br>      custom_fragment     = optional(string)<br>      custom_path         = optional(string)<br>      custom_query_string = optional(string)<br>    }))<br>  }))</pre> | `[]` | no |
| <a name="input_storage_account_name"></a> [storage\_account\_name](#input\_storage\_account\_name) | Name of storage account which will be used to store logs from FrontDoor. | `string` | `null` | no |
| <a name="input_subscription_id"></a> [subscription\_id](#input\_subscription\_id) | Region in which resources are deployed | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->