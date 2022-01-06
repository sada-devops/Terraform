terraform {
  backend "s3" {
    bucket = "my-tf-test-bucket"
    key    = "terraform/terraform.tfstate"
    region = "ap-south-1"
  }
}