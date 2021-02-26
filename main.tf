resource "null_resource" "install" {
  provisioner "file" {
    source      	= "./bin/install.sh"
    destination 	= "/tmp/bayudwiyansatria-install-nginx.sh"

    connection {
      type     		= "ssh"
      host     		= var.ssh_host
      user     		= var.ssh_username
      password 		= var.ssh_password
    }
  }

  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/bayudwiyansatria-install-nginx.sh",
      "/tmp/bayudwiyansatria-install-nginx.sh",
    ]

    connection {
      type        = "ssh"
      host        = var.ssh_host
      user        = var.ssh_username
      password    = var.ssh_password
    }
  }
}

resource "null_resource" "configure" {
  provisioner "file" {
    source      	= "./template/nginx.conf.tpl"
    destination 	= "/etc/nginx/nginx.conf"

    connection {
      type        = "ssh"
      host        = var.ssh_host
      user        = var.ssh_username
      password    = var.ssh_password
    }
  }
}

