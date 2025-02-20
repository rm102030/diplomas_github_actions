terraform {
  required_version = "1.4.6"
}
provider "aws" {
  region  = var.aws_region
  #profile = var.aws_profile
}

terraform {
  backend "s3" {
    bucket         = "pragmalabstatebucket2025"
    dynamodb_table = "pragmalabstatebucket2025"
    encrypt        = true
    key            = "./terraform.tfstate"
    region         = "us-east-1"
  }
}

