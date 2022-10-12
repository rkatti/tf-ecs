variable "workspace_iam_roles" {
  default = {
    # These roles must be created in AWS by Admin.
    dev = "arn:aws:iam::STAGING-ACCOUNT-ID:role/Terraform"
    # staging = "arn:aws:iam::STAGING-ACCOUNT-ID:role/Terraform"
  }
}

provider "aws" {
  # No credentials explicitly set here because they come from either the
  # environment or the global credentials file.
  assume_role = {
    role_arn = "${var.workspace_iam_roles[terraform.workspace]}"
  }

  region = terraform.workspace
}
