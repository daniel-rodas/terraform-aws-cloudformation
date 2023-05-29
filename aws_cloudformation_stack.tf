resource "aws_cloudformation_stack" "stack" {
  name = var.cloudformation_stack_name
  
  parameters = var.parameters_map

  capabilities  = var.capabilities
  template_body = file(var.stack_template_body)
}
