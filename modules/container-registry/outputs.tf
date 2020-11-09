output "out_adminPassword" {
    value = "${azurerm_container_registry.app-service-azure-container-registry.admin_password}"
}
output "out_containerRegistryName" {
    value = "${azurerm_container_registry.app-service-azure-container-registry.name}"
}