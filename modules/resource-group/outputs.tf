# Define outputs of resource group creation
output "out_resourceGroupName" {
    value = "${azurerm_resource_group.app-service-resource-group.name}"
}
output "out_resourcegroupId" {
    value = "${azurerm_resource_group.app-service-resource-group.id}"
}