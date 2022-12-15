resource "azurerm_resource_group" "fg-rg" {
  name     = "${var.company_name}-${var.resoure_group_name}"
  location = var.resoure_group_location
}

resource "azurerm_frontdoor" "b2cfrontdoor" {
      name                 = "${var.company_name}-${var.frontend_endpoint}"
      resource_group_name  = azurerm_resource_group.fg-rg.name
    
      routing_rule {
        name               = "routingrule"
        accepted_protocols = ["Http", "Https"]
        patterns_to_match  = ["/*"]
        frontend_endpoints = ["${var.company_name}-${var.frontend_endpoint}"]
        forwarding_configuration {
          forwarding_protocol = "MatchRequest"
          backend_pool_name   = "${var.company_name}-${var.backend_pool_name}"
        }
      }
    
      backend_pool_load_balancing {
        name = "loadbalancingsettings"
      }
    
      backend_pool_health_probe {
        name    = "healthprobesettings"
        enabled = false
        probe_method = "HEAD"
      }
    
      backend_pool {
        name = "${var.company_name}-${var.backend_pool_name}"
        backend {
          host_header = "xyz.b2clogin.com"
          address     = "xyz.b2clogin.com"
          http_port   = 80
          https_port  = 443
        }
        load_balancing_name = "loadbalancingsettings"
        health_probe_name   = "healthprobesettings"
      }
    
      frontend_endpoint {
        name      = "${var.company_name}-${var.frontend_endpoint}"
        host_name = "${var.company_name}-${var.frontend_endpoint}${var.frontend_endpoint_hostname}"
        session_affinity_enabled = false
        session_affinity_ttl_seconds = 0
      }
    }
