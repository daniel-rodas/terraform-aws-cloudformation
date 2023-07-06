resource "aws_cloudformation_stack_set" "stackset" {
  name          = var.stackset_name
  template_body = var.stackset_template_body
  parameters    = var.stackset_parameters_map
  capabilities  = var.capabilities
  permission_model = "SERVICE_MANAGED"
  auto_deployment {
    enabled = true
  }
}

# │ Error: creating CloudFormation StackSet (Test1) Instance: waiting for completion: unexpected state 'FAILED', wanted target 'SUCCEEDED'. last error: Operation (terraform-2023062703363440260000000a) Results: 1 error occurred:
# │       * Account (719774287182) Region (us-west-2) Status (FAILED) Status Reason: User: arn:aws:sts::719774287182:assumed-role/AWSCloudFormationStackSetExecutionRole/1d6cc9c5-b5f5-4527-8696-fcb75ba92be7 is not authorized to perform: cloudformation:CreateStack on resource: arn:aws:cloudformation:us-west-2:719774287182:stack/StackSet-Test1-9cc76b74-20fc-4364-9ec0-593ca7a00fd0/* because no identity-based policy allows the cloudformation:CreateStack action

resource "aws_cloudformation_stack_set_instance" "stacksetinstance" {
    # account_id     = "123456789012" # Only for self managed permission model
  deployment_targets {
    # organizational_unit_ids = [aws_organizations_organization.example.roots[0].id]
    # organizational_unit_ids = [data.aws_organizations_organization.organization.accounts[2].id]
    organizational_unit_ids = var.stacksetinstance_deployment_targets.organizational_unit_ids
  }

  stack_set_name = aws_cloudformation_stack_set.stackset.name
}

