# Variables for module call
variable "var_resourceLocation" {
    type = string
    description = "Location of the resource"
}
variable "var_resourceGroupName" {
    type = string
    description = "Resource group to be deployed"
}
variable "var_defaultTags" {
    type = map
    description = "Default tags for the resource"
}
variable "var_resourceIdentifier" {
    type = string
    description = "Identifier of the created resources on this module"
}
# Resource variables with default values
variable "var_resourceTags" {
    type = map
    description = "Tags of the resource"
    default = {
        "Version" = "1.0"
        "ResourceType" = "Web app for containers"
    }
}
variable "var_containerUrl" {
    type = string
    description = "url of the azure container registry"
}
variable "var_containerUser" {
    type = string
    description = "User of admin enabled container registry"
}
variable "var_containerPassword" {
    type = string
    description = "Password of the azure container registry admin user"
}
variable "var_containerRepository" {
    type = string
    description = "Identifier of the created resources on this module"
    default = "net-core-api"
}
variable "var_containerTag" {
    type = string
    description = "Identifier of the created resources on this module"
    default = "latest"
}
variable "var_appServicePlanId" {
    type = string
    description = "Id of the app service plan"
}