# Tags for the resource group
variable "var_resourceGroupTags" {
    type = map
    description = "Tags for the resource group"
    default = {
        "Version" = "1.0.0"
        "ResourceType" = "Resource Group"
    }
}
variable "var_defaultTags" {
    type = map
    description = "Default tags for the resource"
}
variable "var_resourceLocation" {
    type = string
    description = "Location of the resource"
}
variable "var_resourceIdentifier" {
    type = string
    description = "Identifier of the created resources on this module"
}