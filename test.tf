 resource "aws_instance" "ec2" {
   ami = "ami-0f3c7d07486cad139"
   instance_type = "t3.micro"
   vpc_security_group_ids = [sg-043db02ec7e17c9ae]
   tags = {
     Name = "test"
   }
 }