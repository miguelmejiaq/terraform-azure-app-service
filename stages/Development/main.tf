# Configure Azure provider
provider "azurerm" {
    subscription_id = var.var_azureSubscriptionId
    client_id       = var.var_azureClientId
    client_secret   = var.var_azureClientSecret
    tenant_id       = var.var_azureTenantId
    version = "=1.44.0"
}
# Configure the resource group
module "azure-resource-group" {
    source = "./../../modules/resource-group"
    var_defaultTags = var.var_tags
    var_resourceLocation = var.var_location
    var_resourceIdentifier = var.var_resourceIdentifier
}
# Configure the App service plan
module "azure-container-registry" {
    source = "./../../modules/container-registry"
    var_defaultTags = var.var_tags
    var_resourceLocation = var.var_location
    var_resourceIdentifier = var.var_resourceIdentifier
    var_resourceGroupName = "${module.azure-resource-group.out_resourceGroupName}"
}
# Configure the App service plan
module "azure-app-service-plan" {
    source = "./../../modules/app-service-plan"
    var_defaultTags = var.var_tags
    var_resourceLocation = var.var_location
    var_resourceIdentifier = var.var_resourceIdentifier
    var_resourceGroupName = "${module.azure-resource-group.out_resourceGroupName}"
}
module "azure-web-app" {
    source = "./../../modules/web-app"
    var_defaultTags = var.var_tags
    var_resourceLocation = var.var_location
    var_resourceIdentifier = var.var_resourceIdentifier
    var_resourceGroupName = "${module.azure-resource-group.out_resourceGroupName}"
    var_appServicePlanId = "${module.azure-app-service.plan.out_appServicePlanId}"
    var_containerUrl = "${module.azure-container-registry.out_containerRegistryName}.azurecr.io"
    var_containerUser = "${module.azure-container-registry.out_containerRegistryName}"
    var_containerPassword = "${module.azure-container-registry.out_containerRegistryPassword}"
}