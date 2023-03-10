terraform {
    required_version = ">= 1.0.0, < 2.0.0"

    required_providers {
        aws = {
            source  = "hashicorp/aws"
            version = "~> 4.0"
        }
    }
}

provider "aws" {
    region = "ap-south-1"
}

resource "aws_instance" "example" {
    ami = "ami-0cca134ec43cf708f"
    instance_type = "t2.micro"
    tags = {
        Name = "terraform-example"
    }
}