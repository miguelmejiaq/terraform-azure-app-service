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
        "ResourceType" = "App Service Plan"
    }
}
variable "var_resourceSku" {
    type = map
    description = "Sku for the resource"
    default = {
        tier = "Standard"
        size = "S1"
    }
}
variable "var_resourceKind" {
    type = string
    description = "Kind of Service plan"
    default = "Linux"
}