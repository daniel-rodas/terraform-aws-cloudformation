# resource "aws_cloudformation_stack" "iam_user" {
#   name = var.cloudformation_stack_name
  
#   parameters = {
#     Username           = var.iam_user_name
#     Password           = var.iam_user_password
#   }

#   capabilities  = var.capabilities
#   template_body = file("templates/cloudformation/iam-user.template.yaml")
# }

