module "stack_breakglass" {
  source = "../"

  parameters_map = {
    Username = "ErickE"
    Password = "MySecret$$@s2"
  }

  cloudformation_stack_name = "Test1"
  stack_template_body       = data.local_file.template.content
}

data "local_file" "template" {
  filename = "./templates/cloudformation/iam-user.template.yaml"
}
