resource "aws_instance" "test" {
  ami           = "ami-036c2987dfef867fb"
  instance_type = var.instance_type

  tags = {
    Name = var.Name
  }
}

variable "Name" {}
variable "instance_type" {}