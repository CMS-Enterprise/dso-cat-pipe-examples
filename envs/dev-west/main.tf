# Configure the AWS provider
provider "aws" {
  region = "us-west-2"
}

# Create a S3 bucket
resource "aws_s3_bucket" "terraform_state" {
  bucket		  = var.bucket_name
  
  lifecycle {
    prevent_destroy = false
  }
}