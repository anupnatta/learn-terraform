# Creating Dev frontend server
resource "aws_instance" "frontend" {
  ami                    = "ami-0f3c7d07486cad139"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-043db02ec7e17c9ae"]
  tags                   = {
    Name = "frontend-dev"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z024789331TA1ZYTI6SDI"
  name    = "frontend-dev.devop69.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}
# Creating Dev MongoDB server

resource "aws_instance" "mongodb" {
  ami                    = "ami-0f3c7d07486cad139"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-043db02ec7e17c9ae"]
  tags                   = {
    Name = "mongodb-dev"
  }
}

resource "aws_route53_record" "mongodb" {
  zone_id = "Z024789331TA1ZYTI6SDI"
  name    = "mongodb-dev.devop69.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mongodb.private_ip]
}

# Creating Dev Catalogue server

resource "aws_instance" "catalogue" {
  ami                    = "ami-0f3c7d07486cad139"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-043db02ec7e17c9ae"]
  tags                   = {
    Name = "catalogue-dev"
  }
}

resource "aws_route53_record" "catalogue" {
  zone_id = "Z024789331TA1ZYTI6SDI"
  name    = "catalogue-dev.devop69.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.catalogue.private_ip]
}

# Creating Dev Redis Server

resource "aws_instance" "redis" {
  ami                    = "ami-0f3c7d07486cad139"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-043db02ec7e17c9ae"]
  tags                   = {
    Name = "redis-dev"
  }
}

resource "aws_route53_record" "redis" {
  zone_id = "Z024789331TA1ZYTI6SDI"
  name    = "redis-dev.devop69.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.redis.private_ip]
}

#Creating Dev User Server

resource "aws_instance" "user" {
  ami                    = "ami-0f3c7d07486cad139"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-043db02ec7e17c9ae"]
  tags                   = {
    Name = "user-dev"
  }
}

resource "aws_route53_record" "user" {
  zone_id = "Z024789331TA1ZYTI6SDI"
  name    = "user-dev.devop69.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.user.private_ip]
}

# Creating Dev Cart Server

resource "aws_instance" "cart" {
  ami                    = "ami-0f3c7d07486cad139"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-043db02ec7e17c9ae"]
  tags                   = {
    Name = "cart-dev"
  }
}

resource "aws_route53_record" "cart" {
  zone_id = "Z024789331TA1ZYTI6SDI"
  name    = "cart-dev.devop69.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.cart.private_ip]
}

# Creating DEv Shipping Server

resource "aws_instance" "shipping" {
  ami                    = "ami-0f3c7d07486cad139"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-043db02ec7e17c9ae"]
  tags                   = {
    Name = "shipping-dev"
  }
}

resource "aws_route53_record" "shipping" {
  zone_id = "Z024789331TA1ZYTI6SDI"
  name    = "shipping-dev.devop69.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.shipping.private_ip]
}

# Creating Dev mySQL Server

resource "aws_instance" "mysql" {
  ami                    = "ami-0f3c7d07486cad139"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-043db02ec7e17c9ae"]
  tags                   = {
    Name = "mysql-dev"
  }
}

resource "aws_route53_record" "mysql" {
  zone_id = "Z024789331TA1ZYTI6SDI"
  name    = "mysql-dev.devop69.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mysql.private_ip]
}

# Creating Dev RabbitMQ Server

resource "aws_instance" "rabbitmq" {
  ami                    = "ami-0f3c7d07486cad139"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-043db02ec7e17c9ae"]
  tags                   = {
    Name = "rabbitmq-dev"
  }
}

resource "aws_route53_record" "rabbitmq" {
  zone_id = "Z024789331TA1ZYTI6SDI"
  name    = "rabbitmq-dev.devop69.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.rabbitmq.private_ip]
}
# Creating Dev Payment Server

resource "aws_instance" "payment" {
  ami                    = "ami-0f3c7d07486cad139"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-043db02ec7e17c9ae"]
  tags                   = {
    Name = "payment-dev"
  }
}

resource "aws_route53_record" "payment" {
  zone_id = "Z024789331TA1ZYTI6SDI"
  name    = "mongodb-dev.devop69.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.payment.private_ip]
}


