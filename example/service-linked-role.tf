module "aws_iam_service_linked_role" {
    source = "../module/aws_iam_service_linked_role"

    aws_service_name = var.aws_service_name
    description = var.description
}

variable "aws_service_name" {
  default = "elasticbeanstalk.amazonaws.com"
}

variable "description" {
  default = "Sample IAM Service Linked Role via TF"
}

output "o_id" {
  value = module.aws_iam_service_linked_role.id
}

output "o_arn" {
  value = module.aws_iam_service_linked_role.arn
}

output "o_name" {
  value = module.aws_iam_service_linked_role.name
}

output "o_unique_id" {
  value = module.aws_iam_service_linked_role.unique_id
}

output "o_all_tags" {
  value = module.aws_iam_service_linked_role.all_tags
}


# module "linked_role_datasync" {
#     source = "../module/aws_iam_service_linked_role"

#     aws_service_name = "datasync.amazonaws.com"
#     description = "Linked role for Datasync"
# }

