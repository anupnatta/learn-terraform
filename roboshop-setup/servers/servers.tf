resource "aws_instance" "ec2" {
  ami                    = "ami-0f3c7d07486cad139"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-043db02ec7e17c9ae"]
  tags                   = {
    Name = "frontend"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = Z024789331TA1ZYTI6SDI
  name    = "frontend-dev.devop69.online"
  type    = "A"
  ttl     = 300
  records = [aws_instance.frontend.private_ip]
}
###