resource "aws_instance" "frontend" {
  ami                    = "ami-036c2987dfef867fb"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0605b31229658744d"]
  tags = {
    Name = "frontend"
  }
}



resource "aws_instance" "backend" {
  ami                    = "ami-036c2987dfef867fb"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0605b31229658744d"]
  tags = {
    Name = "backend"
  }
}



resource "aws_instance" "mysql" {
  ami                    = "ami-036c2987dfef867fb"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0605b31229658744d"]
  tags = {
    Name = "mysql"
  }
}
