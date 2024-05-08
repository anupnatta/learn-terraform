data "aws_ami" "ami" {
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
  owners      = ["973714476881"]
}

resource "aws_instance" "frontend" {
  count = length(var.instance)
  ami = data.aws_ami.ami.image_id
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-043db02ec7e17c9ae"]

  tags = {
    Name = var.instance[count.index]
  }
}
variable "instance" {
  default = { "cart", "shipping", "catalogue", "user", "payment" }
}

