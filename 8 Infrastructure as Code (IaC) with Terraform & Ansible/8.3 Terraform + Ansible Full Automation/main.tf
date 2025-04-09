resource "aws_instance" "web" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  
  tags = {
    Name = "Terraform-Ansible"
  }

  provisioner "remote-exec" {
    inline = [
      "sudo apt update",
      "sudo apt install ansible -y",
      "ansible-pull -U https://github.com/your-repo/nginx-ansible.git"
    ]
  }
}
