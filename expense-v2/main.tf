resource "aws_instance" "frontend" {
  for_each               = var.instance_types
  ami                    = var.ami
  instance_type          = each.value["instance_type"]
  vpc_security_group_ids = var.security_groups
  tags = {
    Name = each.key
  }
}

variable "ami" {
  default = "ami-036c2987dfef867fb"
}

variable "instance_type" {
  default = "t3.micro"
}

variable "security_groups" {
  default = ["sg-0605b31229658744d"]
}

variable "instance_types" {
  default = {

    frontend = {
      instance_type = "t3.micro"
    }

    mysql = {
      instance_type = "t3.small"
    }

    backend = {
      instance_type = "t3.micro"
    }

  }
}