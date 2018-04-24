resource "aws_s3_bucket" "terraform-state-storage-s3" {
  count  = "${var.s3_bucket_created}"
  bucket = "${var.s3_bucket}"

  versioning {
    enabled = true
  }

  lifecycle {
    prevent_destroy = true
  }

  tags {
    Name = "S3 Remote Terraform State Store"
  }
}
