### Backend ###
terraform {
  backend "s3" {
    bucket = "tf-terraform-state"
    key    = "base/terraform.tfstate"
    region = "ap-southeast-2"
  }
}


### Variables ###
variable "workspace_iam_roles" {
  type = "map"
}

variable "s3_bucket" {
  type = "string"
}

variable "s3_key" {
  type = "string"
}

variable "aws_region" {
  type = "string"
}

variable "dynamodb_state_table" {
  type = "string"
}
