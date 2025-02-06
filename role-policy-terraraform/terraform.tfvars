MASTER_ACCOUNT_REGION = "us-east-1"
CHILD_ACCOUNT_REGION  = "us-east-1"
CHILD_ACCOUNT_ID      = [1,2]
ROLE_NAME             = "RoleForChildAccount"
POLICY_NAME           = "PolicyForChildAccount"
PERMISSIONS           = ["s3:ListBucket", "AdminPriviledges"]
#RESOURCES            = []
RESOURCES             = "*"  