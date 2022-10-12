terraform {
  backend "s3" {
    bucket  = "terraform-remote-store"
    encrypt = true
    key     = "terraform-infra.tfstate"
    region  = terraform.workspace
    ## TODO
    # dynamodb_table = "terraform-state-lock-dynamo"
  }
}
