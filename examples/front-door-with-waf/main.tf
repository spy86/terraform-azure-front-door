provider "azurerm" {
  features {}
}

module "frontdoor" {
  source  = "spy86/front-door/azure"
  version = "1.0.2"
  resource_group_name = "weu-test-rg"
  frontdoor_name      = "example-543"
  subscription_id  = "11111111-2222-3333-4444-555555555555"
  log_analytics_workspace_name = "3c31e559"
  routing_rules = [
    {
      name               = "exampleRoutingRule1"
      accepted_protocols = ["Http", "Https"]
      patterns_to_match  = ["/"]
      frontend_endpoints = ["dev-example-543-weu-fd"]
      forwarding_configuration = {
        forwarding_protocol = "MatchRequest"
        backend_pool_name   = "exampleBackendBing1"
      }
    }
  ]

  backend_pool_load_balancing = [
    {
      name = "exampleLoadBalancingSettings1"
    },
    {
      name = "exampleLoadBalancingSettings2"
    }
  ]

  backend_pool_health_probes = [
    {
      name = "exampleHealthProbeSetting1"
    },
    {
      name = "exampleHealthProbeSetting2"
    }
  ]

  backend_pools = [
    {
      name = "exampleBackendBing1"
      backend = {
        host_header = "bing.com"
        address     = "bing.com"
        http_port   = 80
        https_port  = 443
      }
      load_balancing_name = "exampleLoadBalancingSettings1"
      health_probe_name   = "exampleHealthProbeSetting1"
    }
  ]

  frontend_endpoints = [
    {
      name      = "dev-example-543-weu-fd"
      host_name = "dev-example-543-weu-fd.azurefd.net"
    }
  ]

  default_tags = {
      Administrator = "Someone"
      Department = "IT"
      CostCentre = "ABC123"
      ContactPerson = "Someone@example.com"
      ManagedByTerraform = "True"
}
}