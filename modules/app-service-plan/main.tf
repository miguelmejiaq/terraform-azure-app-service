resource "azurerm_app_service_plan" "app-service-azure-service-plan" {
    name = "${var.var_resourceIdentifier}asp"
    resource_group_name = "${var.var_resourceGroupName}"
    location = "${var.var_resourceLocation}"
    kind = "${var.var_resourceKind}"
    sku = var.var_resourceSku
    tags = {
        for k,v in merge(
            var.var_resourceTags,
            var.var_defaultTags
        ) : k => v
    }
}