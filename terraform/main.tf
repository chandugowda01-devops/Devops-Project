terraform {
  required_version = ">= 1.6.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

# Learning example: an S3 bucket with a generated name.
# Review security, encryption, lifecycle and access policies before
# using this pattern for real infrastructure.
resource "aws_s3_bucket" "devops_demo" {
  bucket_prefix = "chandana-devops-demo-"
}
