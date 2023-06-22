provider "aws" {
  region = "eu-west-2"
}

resource "aws_instance" "example" {
  ami           = "ami-07650ecb0de9bd731"
  instance_type = var.instance1
  tags = {
    Name = "oak-tree3"
  }
}


variable "instance1" {
  type    = string
  default = "t2.micro"
}
