resource "aws_instance" "test" {
  ami = "ami-0fc522222ab74a244"
  instance_type = "t3.micro"
}
