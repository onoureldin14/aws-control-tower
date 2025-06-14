terraform {
  backend "s3" {
    bucket       = "aws-control-tower-tfstate-l2xpzo"
    key          = "state/terraform.tfstate"
    use_lockfile = true
    region       = "eu-west-1"
  }
}
