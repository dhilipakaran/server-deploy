resource "google_compute_instance" "vm_instance" {
  name         = ""
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = ""
    }
  }

  network_interface {
    network       = ""
    access_config {}
  }

  metadata_startup_script = <<-EOF
    #!/bin/bash
    sudo apt update
    sudo apt install -y apache2
    sudo apt install -y nginx
    sudo systemctl start apache2
    sudo systemctl enable apache2
  EOF
}
