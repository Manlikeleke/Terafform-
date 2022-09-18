provider "aws" {
  region     = "us-west-2"
  profile = "default"
}
  
resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}..