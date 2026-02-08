resource "azurerm_container_app_environment" "env" {
  name                = var.container_env_name
  location            = var.location
  resource_group_name = azurerm_resource_group.rg_01.name
}

resource "azurerm_container_app" "app" {
  name                         = var.container_app_name
  resource_group_name          = azurerm_resource_group.rg_01.name
  container_app_environment_id = azurerm_container_app_environment.env.id
  revision_mode                = "Single"

  template {
    container {
      name   = "app"
      image  = var.container_image
      cpu    = 0.25
      memory = "0.5Gi"
    }
  }

  ingress {
    external_enabled = true
    target_port      = 8090

    traffic_weight {
      latest_revision = true
      percentage      = 100
    }
  }
}
