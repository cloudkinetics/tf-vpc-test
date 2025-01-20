

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}

terraform {
  backend "s3" {
    bucket = "ltc-backendtest.tf"
    key    = "corestack2/terraform.tfstate"
    region = "ap-northeast-3"
  }
}
