resource "aws_instance" "web" {

  ami           = data.aws_ami.amazon_linux.id

  instance_type = "t3.micro"

  subnet_id = aws_subnet.public.id

  vpc_security_group_ids = [
    aws_security_group.ec2_sg.id
  ]

  tags = {
    Name = "terraform-ec2"
  }

}