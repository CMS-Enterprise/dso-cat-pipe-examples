# Configure the AWS provider
provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "local" {}
}

resource "random_uuid" "test" {
}

# Create a S3 bucket
resource "aws_s3_bucket" "terraform_state" {
  bucket		  = "${random_uuid.test.result}-${var.bucket_name}"
  
  lifecycle {
    prevent_destroy = false
  }
}
