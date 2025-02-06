provider "aws" {
  alias  = "master"
  region = var.master_account_region
}

provider "aws" {
  alias  = "child"
  region = var.child_account_region
  assume_role {
    role_arn = "arn:aws:iam::${var.child_account_id}:role/${var.role_name}"
  }
}
