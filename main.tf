provider "aws" {
  region = "us-east-1"  # Update with your desired region
}

resource "aws_instance" "JenTFInst" {
  ami           = "ami-0e731c8a588258d0d"  # Update with your AMI ID
  instance_type = "t2.micro"                # Update with your desired instance type
  key_name      = "tfkp"                    # Update with your EC2 key pair name

  tags = { Name = "JenTFInst"}
}

output "public_ip" {
    value= aws_instance.JenTFInst.public_ip
}