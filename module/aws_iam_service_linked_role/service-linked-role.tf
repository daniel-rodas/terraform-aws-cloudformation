resource "aws_iam_service_linked_role" "role" {
    aws_service_name = var.aws_service_name
    custom_suffix = var.custom_suffix
    description = var.description
    tags = {
        "TerraformManaged" = "Yes"
    }
}

variable "aws_service_name" {
  
}

variable "custom_suffix" {
  default = null
}

variable "description" {
  
}

output "id" {
  value = aws_iam_service_linked_role.role.id
}

output "arn" {
  value = aws_iam_service_linked_role.role.arn
}

# output "create_date" {
#   value = aws_iam_service_linked_role.role.
# }

output "name" {
  value = aws_iam_service_linked_role.role.name
}

output "unique_id" {
  value = aws_iam_service_linked_role.role.unique_id
}

output "all_tags" {
  value = aws_iam_service_linked_role.role.tags_all
}
