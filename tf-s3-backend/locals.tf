locals {
  aws_s3_bucket_name = "aws-control-tower-tfstate-${random_string.name_suffix.result}"
}
