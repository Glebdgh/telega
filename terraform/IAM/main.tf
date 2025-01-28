provider "aws" {
  region = "eu-central-1"
  access_key = ""
  secret_key = ""
}
module "iam_account" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-account"

  account_alias = "awesome-company"

  minimum_password_length = 37
  require_numbers         = false
}