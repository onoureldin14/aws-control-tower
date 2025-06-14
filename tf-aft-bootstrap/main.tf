resource "aws_servicecatalog_principal_portfolio_association" "aft_exec_access" {
  portfolio_id  = data.aws_servicecatalog_portfolio.account_factory.id
  principal_arn = data.aws_iam_role.aft_execution_role.arn
  depends_on    = [module.aft_pipeline]
}


module "aft_pipeline" {
  source = "git::https://github.com/aws-ia/terraform-aws-control_tower_account_factory.git?ref=1.14.1"
  # Required Variables
  ct_management_account_id    = local.ct_management_account.id
  log_archive_account_id      = local.log_archive_account.id
  audit_account_id            = local.audit_account.id
  aft_management_account_id   = local.aft_management_account.id
  ct_home_region              = var.aws_region
  tf_backend_secondary_region = var.aws_backup_region

  # Terraform variables
  terraform_version      = "1.6.0"
  terraform_distribution = "oss"

  # VCS Vars
  vcs_provider                                  = "github"
  account_request_repo_name                     = "${var.github_username}/aft-account-request"
  global_customizations_repo_name               = "${var.github_username}/aft-global-customizations"
  account_customizations_repo_name              = "${var.github_username}/aft-account-customizations"
  account_provisioning_customizations_repo_name = "${var.github_username}/aft-account-provisioning-customizations"

  # AFT Feature flags
  aft_feature_cloudtrail_data_events      = false
  aft_feature_enterprise_support          = false
  aft_feature_delete_default_vpcs_enabled = true

  # AFT Additional Configurations
  aft_enable_vpc                            = false
  backup_recovery_point_retention           = 1
  log_archive_bucket_object_expiration_days = 1
}
