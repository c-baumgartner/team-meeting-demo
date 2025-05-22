# Map of all the variables used in the module
locals {
  resource_group_name = var.resource_group_name
}

# Define some default tags to be used accross all resources
locals {
  location = data.azurerm_resource_group.parent.location

  default_tags = merge(
    var.default_tags,
    tomap({
      "Environment" = "dev"
    })
  )
}
