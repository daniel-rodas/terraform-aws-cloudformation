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

variable "stack_template_body" {
  type = map(string)
}
