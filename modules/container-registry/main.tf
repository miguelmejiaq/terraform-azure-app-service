resource "azurerm_container_registry" "app-service-azure-container-registry" {
    name = "${var.var_resourceIdentifier}acr"
    resource_group_name = "${var.var_resourceGroupName}"
    location = "${var.var_resourceLocation}"
    sku = "${var.var_resourceSku}"
    admin_enabled = true
    tags = {
        for k,v in merge(
            var.var_resourceTags,
            var.var_defaultTags
        ) : k => v
    }
}