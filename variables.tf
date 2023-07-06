variable "stackset_name" {
  type = string
  default = null
}

variable "capabilities" {
  default = [
    "CAPABILITY_IAM",
    "CAPABILITY_NAMED_IAM",
    "CAPABILITY_AUTO_EXPAND"
  ]
}

variable "stackset_parameters_map" {
  type    = map(string)
  default = null
}


variable "stackset_template_body" {

  default = null
}

variable "stacksetinstance_deployment_targets" {
  type = object({
    organizational_unit_ids = list(string)
  })

  default = {
    organizational_unit_ids = null
  }
}
