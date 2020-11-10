# Variables Definition
# Azure variables
variable "var_azureSubscriptionId" {
    type = string
    description = "Azure Subscription ID"
}
variable "var_azureClientId" {
    type = string
    description = "Azure Client ID"
}
variable "var_azureClientSecret" {
    type = string
    description = "Azure Client secret"
}
variable "var_azureTenantId" {
    type = string
    description = "Azure Tenant ID"
}
variable "var_tags" {
    type = map
    description = "Default tags for all resources"
    default = {
        Environment = "Development"
    }
}
variable "var_location" {
    type = string
    description = "Region for resources deployments"
    default = "westeurope"
}
variable "var_resourceIdentifier" {
    type = string
    description = "Identifier for resource deployments on this solution"
    default = "euwdmmt01"
}