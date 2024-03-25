# Condition in terraform is all about choosing the value
# cond ? true-val : fal-val

resource "aws_instance" "test" {
  ami           = "ami-036c2987dfef867fb"
  instance_type = var.instance_type == "t2*" ? "t3.micro" : var.instance_type
}

variable "instance_type" {}
