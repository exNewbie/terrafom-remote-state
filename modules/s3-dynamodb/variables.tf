variable "s3_bucket" {
  type = "string"
}

variable "s3_key" {
  type = "string"
}

variable "dynamodb_state_table" {
  type = "string"
}

variable "s3_bucket_created" {
  type        = "string"
  description = "Whether S3 bucket was already created"
}
