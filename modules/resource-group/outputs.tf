# Define outputs of resource group creation
output "out_resourceGroupName" {
    value = "${azurerm_resource_group.res_group.name}"
}
output "out_resourcegroupId" {
    value = "${azurerm_resource_group.res_group.id}"
}