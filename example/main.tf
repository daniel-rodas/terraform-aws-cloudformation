module "stack_set_example_1" {
  source = "../"

  # stackset_parameters_map = {
  #   # UsernameList = "[\"bob\", \"alice\"]"
  #   IAMUser = "alice"
  # }

  stackset_name = "Test1"
  stackset_template_body       = data.local_file.template.content

  stacksetinstance_deployment_targets = {
    # organizational_unit_ids = [data.aws_organizations_organization.organization.accounts[2].id]
    # organizational_unit_ids = [data.aws_organizations_organization.organization.roots[0].id]
    organizational_unit_ids = ["ou-y0nu-rs58fwa3", "ou-y0nu-ofdu49ji"]
  }
}

data "local_file" "template" {
  filename = "./templates/cloudformation/assume-role.template.json"
}

output "account_ids" {
  value = data.aws_organizations_organization.organization.accounts[*].id
}
