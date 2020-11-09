# Resource Group Module
# Variables:
#   @name : Name of the resource
#   @location: Location of the resource
#   @tags: related metadata for resource (Add the default tags for the resource group)
# Outputs:
#   @name: Name of the Resource Group
#   @id: ID of the Resource Group
resource "azurerm_resource_group" "app-service-resource-group" {
    name = "${var.var_resourceGroupName}"
    location = "${var.var_location}"
    tags = {
        for k,v in merge(
            var.var_resourceGroupTags,
            var.var_tags
        ) : k => v
    }
}