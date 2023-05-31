resource "aws_instance" "example" {
  ami           = "ami-0c9c942bd7bf113a2" # Ubuntu 22.04 LTS
  instance_type = "t2.micro"              # Free tier

  tags = {
    Name = "terraform-example" # Name tag
  }

  key_name = aws_key_pair.example.key_name # Key pair
}

output "public_ip" {
  value = aws_instance.example.public_ip # Public IP
}
