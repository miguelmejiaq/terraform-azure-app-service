resource "azurerm_app_service" "app-service-azure-web-app" {
    name = "${var.var_resourceIdentifier}webappc"
    resource_group_name = "${var.var_resourceGroupName}"
    location = "${var.var_resourceLocation}"
    app_service_plan_id = "${var.var_appServicePlanId}"
    app_settings {
        WEBSITES_ENABLE_APP_SERVICE_STORAGE = false
        DOCKER_REGISTRY_SERVER_URL = "${var.var_containerUrl}"
        DOCKER_REGISTRY_SERVER_USERNAME = "${var.var_containerUser}"
        DOCKER_REGISTRY_SERVER_PASSWORD = "${var.var_containerPassword}"
    }
    site_config {
        linux_fx_version = "DOCKER|${var.var_containerUrl}/${var.var_containerRepository}:${var.var_containerTag}"
    }
    identity {
        type = "SystemAssigned"
    }
}