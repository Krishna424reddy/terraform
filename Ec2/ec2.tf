resource "aws_instance" "My-ec2" {
    ami = "ami-090252cbe067a9e58"
    instance_type = "t3.micro"
    vpc_security_group_ids = [aws_security_group.My-sg.id]
    tags = {
        Name = "My-ec2"
        createdusing = "terraform"
    }
}