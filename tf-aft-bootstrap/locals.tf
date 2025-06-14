locals {
  ct_management_account = [
    for acct in data.aws_organizations_organization.management.accounts :
    acct if acct.name == "usermanagement"
  ][0]

  log_archive_account = [
    for acct in data.aws_organizations_organization.management.accounts :
    acct if acct.name == "Log Archive"
  ][0]

  audit_account = [
    for acct in data.aws_organizations_organization.management.accounts :
    acct if acct.name == "Audit"
  ][0]

  aft_management_account = [
    for acct in data.aws_organizations_organization.management.accounts :
    acct if acct.name == "AFT Management"
  ][0]
}
