resource "aws_instance" "web" {
  ami           = "ami-0c87a756f3fd22df2"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld1"
  }
}

output "instance_ip_addr" {
  value = aws_instance.web.private_ip
}
