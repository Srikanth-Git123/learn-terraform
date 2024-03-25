resource "aws_instance" "test" {
  ami           = "ami-036c2987dfef867fb"
  instance_type = "t3.micro"
}
