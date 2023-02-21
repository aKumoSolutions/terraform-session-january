resource "aws_instance" "main" {
    ami = data.aws_ami.amazon_linux_2.image_id
    instance_type = "t2.micro"
    vpc_security_group_ids = [aws_security_group.main_sg.id]
    key_name = aws_key_pair.terraform_server.key_name

    provisioner "file" {
        source = "/home/ec2-user/terraform-session-january/session-8/index.html" # path on Terraform Server
        destination = "/tmp/index.html" # path for the Remote Server

        connection {
            type = "ssh"
            user = "ec2-user" # Remote Server User
            host = self.public_ip
            private_key = file("~/.ssh/id_rsa")
        }
    }
    provisioner "remote-exec" {
        inline = [
            "sudo yum install httpd -y",
            "sudo systemctl enable httpd",
            "sudo systemctl start httpd",
            "sudo cp /tmp/index.html /var/www/html/index.html"
        ]
        connection {
            type = "ssh"
            user = "ec2-user" # Remote Server User
            host = self.public_ip
            private_key = file("~/.ssh/id_rsa")
        }
    }
}
# ssh user@ip, it automatically checks public key on the remote machine, private key on my local machine
resource "aws_key_pair" "terraform_server" {
    key_name = "Terraform-Server-Key"
    public_key = file("~/.ssh/id_rsa.pub")
}
output "instance_ip" {
    value = aws_instance.main.public_ip
}

resource "null_resource" "local_script" {
    provisioner "local-exec" {
      command = "echo 'Hello from the Local Server' >> local.txt"
    }
}