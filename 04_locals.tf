locals {
  lambdas_path = "${path.module}/src"

  common_tags = {
    Project   = "Lambda Presigned with Terraform"
    CreatedAt = formatdate("YYYY-MM-DD", timestamp())
    ManagedBy = "Terraform"
    Owner     = "Ricardo Martinez"
  }
}
