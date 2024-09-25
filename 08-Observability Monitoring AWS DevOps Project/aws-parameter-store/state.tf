terraform {
  backend "s3" {
    bucket = "terraform-b730"
    key    = "params/terraform.tfstate"
    region = "us-east-1"
  }
}
