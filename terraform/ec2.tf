# Erstellen einer EC2-Instanz
resource "aws_instance" "example" {
  ami           = "ami-0e872aee57663ae2d" # AMI-ID für ubuntu
  instance_type = "t2.nano"
  subnet_id     = aws_subnet.public[0].id # Nutzt das erste öffentliche Subnetz
  key_name      = "aws_ec2_key"           # Dein SSH-Schlüsselname
  vpc_security_group_ids = [aws_security_group.http.id]
  # Sicherstellen, dass die Instanz öffentlich erreichbar ist
  associate_public_ip_address = true
  tags = {
    Name = "example-instance"
  }
}

