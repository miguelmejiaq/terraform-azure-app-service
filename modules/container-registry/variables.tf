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
# Variables for Container Registry
variable "var_resourceTags" {
    type = map
    description = "Tags of the resource"
    default = {
        "Version" = "1.0"
        "ResourceType" = "Azure Container Registry"
    }
}
variable "var_resourceSku" {
    type = string
    description = "Sku for the container registry"
    default = "basic"
}