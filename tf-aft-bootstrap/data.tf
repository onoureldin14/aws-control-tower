data "aws_organizations_organization" "management" {}

data "aws_servicecatalog_portfolio" "account_factory" {
  id = var.service_catalog_portfolio_id
}

data "aws_iam_role" "aft_execution_role" {
  name       = "AWSAFTExecution"
  depends_on = [module.aft_pipeline]
}
