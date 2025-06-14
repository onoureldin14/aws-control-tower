resource "random_string" "name_suffix" {
  length  = 6
  special = false
  upper   = false
}

resource "aws_s3_bucket" "tfstate" {
  bucket = local.aws_s3_bucket_name
  lifecycle {
    prevent_destroy = true
  }
}

resource "aws_s3_bucket_versioning" "terraform_state" {
  bucket = aws_s3_bucket.tfstate.id

  versioning_configuration {
    status = "Enabled"
  }
}
