terraform {
  required_version = "1.4.6"
}
provider "aws" {
  region = var.aws_region
  #profile = var.aws_profile
}

terraform {
  backend "s3" {
    bucket         = "pragmalabstatebucket"
    dynamodb_table = "pragmalabstatebucket2024"
    encrypt        = true
    key            = "./terraform.tfstate"
    region         = "us-east-1"
  }
}

