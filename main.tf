provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "nadia-terraform-demo-${random_id.suffix.hex}"
  acl    = "private"
}

resource "random_id" "suffix" {
  byte_length = 4
}

