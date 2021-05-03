terraform {
  backend "s3" {
    # This is the bucket where to store your state file.
    bucket = "tsoutello-s3-bucket"
    # This will be the state file's file name.
    key    = "terraform-eks-rds"
    # This is the region of your S3 Bucket.
    region = "us-east-1"
    # This ensures the state file is stored encrypted at rest in S3.
    encrypt = true
    # This will be used as a folder inwhich to store your state file.
    workspace_key_prefix = "tsoutello-worskspace"
    # This will allow you to download and view your state file.
    acl = "bucket-owner-full-control"
  }
}

# Default - S3 - https://www.terraform.io/docs/language/settings/backends/s3.html