variable "resource_group_name" {
  description = "The name of the resource group to deploy resources to."
  type        = string
  nullable    = false
}

variable "default_tags" {
  description = <<DESCRIPTION
Tags to be applied to resources.  Default tags are expected to be provided in local.default_tags, 
which is merged with environment specific ones in ``environments\env.terraform.tfvars``.
Most resources will simply apply the default tags like this:

```terraform
tags = local.default_tags
```

Additional tags can be provided by using a merge, for instance:

```terraform
tags = merge(
    local.default_tags,
    tomap({
      "MyExtraResourceTag" = "TheTagValue"
    })
)
```

Note you can also use the above mechanims to override or modify the default tags for an individual resource,
since only unique items in a map are retained, and later tags supplied to merge() function take precedence.
DESCRIPTION
  type        = map(string)
  default     = {}
}