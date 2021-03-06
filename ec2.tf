resource "aws_instance" "sample" {
  ami           = "ami-0bb6af715826253bf"
  instance_type = "t2.micro"
  count         =  2
  tags = {
    Name = "App ${count.index}"
     }
  }



resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"


  ingress {
    description      = "SSH"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]

  }

  tags = {
    Name = "allow_tls"
  }
}

resource "aws_key_pair" "etc_auth" {
  key_name   = "etckey"
  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIHGKzRXd3F9RJGn5WRD31hMplcJHEYbHGtfASSszTJJ4 hp@DESKTOP-DL3999I"
}
