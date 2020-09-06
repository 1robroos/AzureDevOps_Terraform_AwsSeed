terraform {
  required_version = "=0.13.2"
  backend "s3" {
    bucket         = "s3bucket-tfstate-us-east-1"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "aws-locks-terraform"
    encrypt        = true
  }
}