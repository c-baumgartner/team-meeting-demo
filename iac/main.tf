# Get info about the resource group the solution is deployed into
data "azurerm_resource_group" "parent" {
  name = local.resource_group_name
}

# get info about the Azure tenant
data "azurerm_client_config" "current" {}

# Add logic to your IaC module. You should use Azure Verified Modules and
# glueckkanja Verified Modules where possible.

output "demo" {
  value = "Demo time!"
}
