terraform {
  backend "s3" {
    bucket = "kdevops-terraform"
    key = "misc/prometheus/terraform.tfstate"
    region = "us-east-1"

  }
}