variable "aws_region" {
  type        = string
  default     = "eu-west-1"
  description = "AWS Ireland region, used for all resources."
}

variable "aws_backup_region" {
  type        = string
  default     = "eu-west-2"
  description = "AWS London region for backup resources, used for all resources."
}

variable "github_username" {
  type        = string
  description = "GitHub username for the repository owner."
  default     = "onoureldin14"
}

variable "service_catalog_portfolio_id" {
  type        = string
  description = "Service Catalog Portfolio ID for the AWS Control Tower Account Factory Portfolio."
  default     = "port-mb42tqiamsp7i"
}
