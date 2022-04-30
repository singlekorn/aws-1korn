#------------------------------------------------------------
# variables.tf
#------------------------------------------------------------
variable "project_name" {
  type        = string
  default     = "aws-1korn"
  description = "The name of this TF project."
}

variable "account_id" {
  type        = string
  description = "The AWS account ID where all resources are deployed to."
}

variable "env" {
  type        = string
  description = "The operating enviornment (prod, dev)"
}

variable "primary_region" {
  type        = string
  description = "The AWS region where all resources are deployed to."
}

variable "secondary_region" {
  type        = string
  description = "The AWS region where alternate region resources are deployed to."
}
