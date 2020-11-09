# Configure Azure provider
provider "azurerm" {
    subscription_id = var.var_azureSubscriptionId
    client_id       = var.var_azureClientId
    client_secret   = var.var_azureClientSecret
    tenant_id       = var.var_azureTenantId
    version = "=1.44.0"
}

module "azure-resource-group" {
    source = "./modules/resource-group"

}