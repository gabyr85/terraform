#specify which providers we will use - AWS
#terraform init / plan / apply

terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 4.0"
    }
  }
}

provider "aws" {
    region = "us-east-2"
}
resource "aws_instance" "gabytrial" {
    ami = "ami-0578f2b35d0328762"
    instance_type = "t2.nano" 
}

