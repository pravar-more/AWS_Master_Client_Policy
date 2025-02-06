variable "MASTER_ACCOUNT_REGION" {
  description = "The region of the master account"
  type        = string
  default     = "us-east-1"
}

variable "CHILD_ACCOUNT_REGION" {
  description = "The region of the child account"
  type        = string
  default     = "us-east-1"
}

variable "CHILD_ACCOUNT_ID" {
  description = "The ID of the child account"
  type        = list(string)
}

variable "ROLE_NAME" {
  description = "The name of the role to create"
  type        = string
  default     = "RoleForChildAccount"
}

variable "POLICY_NAME" {
  description = "The name of the policy to create"
  type        = string
  default     = "PolicyForChildAccount"
}

variable "PERMISSIONS" {
  description = "The permissions to grant in the policy"
  type        = list(string)
  default     = ["s3:ListBucket", "AdminPriviledges"]
}

variable "resource" {
  description = "The resource ARN for the policy"
  type        = list(string)
  default     = "*"
}
