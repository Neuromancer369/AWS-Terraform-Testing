Terraform {
    required_version = ">=0.12" } 
resource "aws_instance" "ec2_module_1" { 
     ami=var.ami_id instance_type = var.web_instance_type 
     key_name= "aws_key" 
     vpc_security_group_ids = [aws_security_group.main.id] 
    user_data = <<<-EOF 
     #!/bin/sh
     sudo apt-get update
     sudo apt install -y apache2 
     sudo systemctl status apache2
     sudo systemctl start apache2 
     sudo chown -R $USER: $USER /var/www/html 
     sudo echo "<html><body><h1>Hello this is module-1 at EOF