data "aws_ami" "latest_ami" {
  most_recent = true
  owners      = ["amazon"] # Replace with the appropriate owner ID
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"] # Replace with your AMI name pattern
  }
}

resource "ec2_instance" "myec2" {
  ami = var.aws_ami.latest_ami.id
  instance_type = var.instance_type
}
