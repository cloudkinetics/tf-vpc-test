

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}

terraform {
  backend "s3" {
    bucket = "corestack-bucket-tf"
    key    = "terraform.tfstate"
    region = "ap-northeast-3"
  }
}
