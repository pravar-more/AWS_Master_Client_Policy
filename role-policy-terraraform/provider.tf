provider "aws" {
  alias  = "master"
  region = var.master_account_region  
  access_key = ""
  secret_key = ""

}

provider "aws" {
  alias  = "child"
  region = var.child_account_region
  access_key = ""
  secret_key = ""
  assume_role {
    role_arn = "arn:aws:iam::${var.CHILD_ACCOUNT_ID}:role/${var.ROLE_NAME}"
  }
}
