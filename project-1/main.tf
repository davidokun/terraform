variable "access_key" {}
variable "secret_key" {}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "aws_instance" "tf-project-1" {
  ami           = "ami-0ac80df6eff0e70b5"
  instance_type = "t2.micro"

  tags = {
    Name = "Project 1 HelloWorld"
  }
}

resource "aws_vpc" "my-vpc-1" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "qa"
  }
}

resource "aws_subnet" "subnet-1" {
  vpc_id     = aws_vpc.my-vpc-1.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "qa-subnet"
  }
}
