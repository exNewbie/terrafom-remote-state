# Staging uses AWS credentials
# Production uses IAM role
provider aws {
  region  = "${var.aws_region}"
  assume_role { 
    role_arn = "${terraform.workspace == "production" ? var.workspace_iam_roles[terraform.workspace] : ""}"
  }
  profile = "${terraform.workspace == "production" ? "" : "default"}"
}

module "remote_state" {
  source = "./modules/s3-dynamodb"

  s3_bucket = "${var.s3_bucket}"
  dynamodb_state_table = "${var.dynamodb_state_table}"
  s3_key = "${var.s3_key}"
}

