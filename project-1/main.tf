# Configure the AWS Provider
provider "aws" {
  region     = "us-east-1"
  access_key = ""
  secret_key = ""
}

resource "aws_instance" "tf-project-1" {
  ami           = "ami-0ac80df6eff0e70b5"
  instance_type = "t2.micro"
}
