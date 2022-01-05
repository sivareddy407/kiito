provider "aws" {
  region = "us-east-1"
}
#THis is for github demo
resource "aws_instance" "foo" {
  ami           = "ami-04505e74c0741db8d"
  instance_type = "t2.micro"
  key_name      = "SR"
  vpc_security_group_ids = "sg-1230a411"

  tags = {
      Name = "TERRAFORM DEMO"
    }
  }
