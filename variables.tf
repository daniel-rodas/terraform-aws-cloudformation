variable "cloudformation_stack_name" {
  type = string
}

# variable "iam_user_name" {
#     type = string
# }

# variable "iam_user_password" {
#     type = string
#     sensitive = true
# }

variable "capabilities" {
  default = [
    "CAPABILITY_IAM",
    "CAPABILITY_NAMED_IAM"
  ]
}

variable "parameters_map" {
  type = map(string)
}

variable "stack_template_body" {
  default = null
}

