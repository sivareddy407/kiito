  backend "s3" {
         bucket = "siva-terraform-1"
         key    = "terraform.tfstate"
         region = "us-east-1"
        }

        resource "aws_key_pair" "siva_terraform" {
        key_name   = "siva_terraform"
        public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQD3F6tyPEFEzV0LX3X8BsXdMsQz1x2cEikKDEY0aIj41qgxMCP/iteneqXSIFZBp5vizPvaoIR3Um9xK7PGoW8giupGn+EPuxIA4cDM4vzOqOkiMPhz5XK0whEjkVzTo4+S0puvDZuwIsdiW9mxhJc7tgBNL0cYlWSYVkz4G/fslNfRPW5mYAM49f4fhtxPb5ok4Q2Lg9dPKVHO/Bgeu5woMc7RY0p1ej6D4CKFE6lymSDJpW0YHX/wqE9+cfEauh7xZcG0q9t2ta6F6fmX0agvpFyZo8aFbXeUBr7osSCJNgvavWbM/06niWrOvYX2xwWdhXmXSrbX8ZbabVohBK41 email@example.com"
        }

        resource "aws_security_group" "sg_siva" {

        ingress {
        from_port        = 22
        to_port          = 22
        protocol         = "tcp"
        cidr_blocks      = ["172.31.52.63/32"]
        }

        egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
        }

        tags = {
        Name = "sg_siva"
        }
        }
