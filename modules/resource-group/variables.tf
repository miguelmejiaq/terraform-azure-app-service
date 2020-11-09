# Resource group name
variable "var_resourceGroupName" {
    type = string
    description = "Define the name of the resource group."
    default = "${var.var_regionPreffix}${var.var_company}rsg"
}
# Tags for the resource group
variable "var_resourceGroupTags" {
    type = map
    description = "Tags for the resource group"
    default = {
        "Version" = "1.0.0"
        "ResourceType" = "Resource Group"
    }
}