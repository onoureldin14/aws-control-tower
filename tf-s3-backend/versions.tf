terraform {
  required_version = ">= 0.14.9"
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.7.2"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "6.0.0-beta3"
    }
  }
}
