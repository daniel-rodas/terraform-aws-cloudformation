module "stack_breakglass" {
  source = "terraform-aws-cloudformation"

  parameters = {
    Username = "ErickE"
    Password = "MySecret$$@s2"
  }

  cloudformation_stack_name = "Test1"
  stack_template_body = "templates/cloudformation/stack_template_body.yaml"
}