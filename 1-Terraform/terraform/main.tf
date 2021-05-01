resource "aws_instanc" "test_instance" {
  ami           = var.ami_id
  instance_type = var.instance_type
  tags          = var.tags
}


resource "aws_security_group" "test_instance_sg" {
  name          = "Test-Instance"
  description   = "Allow SSH traffic"
  vpc_id        = var.vpc_id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.ssh_cidr
    }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    }
  tags          = var.tags
}