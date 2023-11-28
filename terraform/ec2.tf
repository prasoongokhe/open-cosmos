resource "aws_instance" "oc-ec2" {
    ami = var.ami
    instance_type = var.instance_type
    key_name = var.key_name
   // security_groups = ["rtp03-sg"]
   vpc_security_group_ids = ["${aws_security_group.oc-sg.id}"]
   subnet_id = "${aws_subnet.oc-subnet-01.id}"

   tags = {
    Name = var.instance_name
   }

   provisioner "remote-exec" {
    inline = ["echo 'Wait until SSH is ready'"]

    connection {
      type        = "ssh"
      user        = local.ssh_user
      private_key = var.key_name
      host        = aws_instance.oc-ec2.public_ip
    }
  }
  provisioner "local-exec" {
    command = "ansible-playbook  -i ${aws_instance.oc-ec2.public_ip}, --private-key ${var.key_name} ../ansible/minikube-playboo.yaml"
  }
}