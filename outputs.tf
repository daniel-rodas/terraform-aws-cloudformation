output "account_ids" {
  value = data.aws_organizations_organization.organization.accounts[*].id
}
