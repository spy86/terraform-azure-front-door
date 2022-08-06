resource "azurerm_frontdoor" "main" {
  name                     = "${var.environment}-${var.frontdoor_name}-${var.region}-fd"
  resource_group_name      = "${data.azurerm_resource_group.rg.name}"
  load_balancer_enabled    = true
  tags                     = "${var.default_tags}"

  dynamic "backend_pool" {
    for_each = "${var.backend_pools}"
    content {
      name                 = backend_pool.value.name
      load_balancing_name  = backend_pool.value.load_balancing_name
      health_probe_name    = backend_pool.value.health_probe_name

      dynamic "backend" {
        for_each = backend_pool.value.backend[*]
        content {
          enabled          = true
          address          = backend.value.address
          host_header      = backend.value.host_header
          http_port        = backend.value.http_port
          https_port       = backend.value.https_port
          priority         = backend.value.priority
          weight           = backend.value.weight
        }
      }
    }
  }

  dynamic "backend_pool_health_probe" {
    for_each = "${var.backend_pool_health_probes}"
    content {
      name                = backend_pool_health_probe.value.name
      enabled             = true
      path                = backend_pool_health_probe.value.path
      protocol            = backend_pool_health_probe.value.protocol
      probe_method        = backend_pool_health_probe.value.probe_method
      interval_in_seconds = backend_pool_health_probe.value.interval_in_seconds
    }
  }

  dynamic "backend_pool_load_balancing" {
    for_each = "${var.backend_pool_load_balancing}"
    content {
      name                            = backend_pool_load_balancing.value.name
      sample_size                     = backend_pool_load_balancing.value.sample_size
      successful_samples_required     = backend_pool_load_balancing.value.successful_samples_required
      additional_latency_milliseconds = backend_pool_load_balancing.value.additional_latency_milliseconds
    }
  }

  dynamic "frontend_endpoint" {
    for_each = "${var.frontend_endpoints}"
    content {
      name                                     = frontend_endpoint.value.name
      host_name                                = frontend_endpoint.value.host_name
      session_affinity_enabled                 = frontend_endpoint.value.session_affinity_enabled
      session_affinity_ttl_seconds             = frontend_endpoint.value.session_affinity_ttl_seconds
      web_application_firewall_policy_link_id  = "/subscriptions/${var.subscription_id}/resourcegroups/${data.azurerm_resource_group.rg.name}/providers/Microsoft.Network/frontdoorwebapplicationfirewallpolicies/Mainfdwafpolicy"
    }
  }

  dynamic "routing_rule" {
    for_each = "${var.routing_rules}"
    content {
      name               = routing_rule.value.name
      frontend_endpoints = routing_rule.value.frontend_endpoints
      accepted_protocols = routing_rule.value.accepted_protocols
      patterns_to_match  = routing_rule.value.patterns_to_match
      enabled            = true

      dynamic "forwarding_configuration" {
        for_each = routing_rule.value.forwarding_configuration[*]
        content {
          backend_pool_name                     = forwarding_configuration.value.backend_pool_name
          cache_enabled                         = lookup(forwarding_configuration.value, "cache_enabled", false)
          cache_use_dynamic_compression         = lookup(forwarding_configuration.value, "cache_use_dynamic_compression", false)
          cache_query_parameter_strip_directive = lookup(forwarding_configuration.value, "cache_query_parameter_strip_directive", "StripAll")
          cache_query_parameters                = forwarding_configuration.value.cache_query_parameters
          cache_duration                        = forwarding_configuration.value.cache_enabled == true ? forwarding_configuration.value.cache_duration : null
          custom_forwarding_path                = forwarding_configuration.value.custom_forwarding_path
          forwarding_protocol                   = forwarding_configuration.value.forwarding_protocol
        }
      }

      dynamic "redirect_configuration" {
        for_each = routing_rule.value.redirect_configuration[*]
        content {
          custom_host         = redirect_configuration.value.custom_host
          redirect_protocol   = lookup(redirect_configuration.value, "redirect_protocol", "MatchRequest")
          redirect_type       = redirect_configuration.value.redirect_type
          custom_fragment     = redirect_configuration.value.custom_fragment
          custom_path         = redirect_configuration.value.custom_path
          custom_query_string = redirect_configuration.value.custom_query_string
        }
      }
    }
  }
  depends_on = [
    [ azurerm_frontdoor_firewall_policy.main ]
  ]
}