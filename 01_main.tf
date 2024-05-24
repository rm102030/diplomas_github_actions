terraform {
  required_version = "0.14.3"
  #required_version = "1.4.6"
}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile

  # default_tags {
  #     tags = {
  #       Project   = "Lambda Presigned with Terraform"
  #       CreatedAt = formatdate("YYYY-MM-DD", timestamp())
  #       ManagedBy = "Terraform"
  #       Owner     = "RM"
  #     }
  #   }
}



