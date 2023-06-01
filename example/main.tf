module "stack_breakglass" {
  source = "../"

  parameters_map = {
    Username = "User_1"
    Password = var.iam_user_password
  }

  cloudformation_stack_name = "Test1"
  stack_template_body       = data.local_file.template.content
}

data "local_file" "template" {
  filename = "./templates/cloudformation/iam-user.template.yaml"
}

variable "iam_user_password" {
  sensative = true
}
