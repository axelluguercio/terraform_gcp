resource "google_compute_instance" "vm_instance1" {
  name         = "tf-instance-1"
  project      = var.project_id
  zone         = var.zone
  machine_type = "n1-standard-1"
  boot_disk {
    initialize_params {
      image = "debian-10-buster-v20220519"
    }
  }
  network_interface {
    network    = "tf-vpc-824189"
    subnetwork = "subnet-01"
    access_config {
    }
  }
  metadata_startup_script = <<-EOT
        #!/bin/bash
    EOT
  allow_stopping_for_update = true
}

resource "google_compute_instance" "vm_instance2" {
  name         = "tf-instance-2"
  project      = var.project_id
  zone         = var.zone
  machine_type = "n1-standard-1"
  boot_disk {
    initialize_params {
      image = "debian-10-buster-v20220519"
    }
  }
  network_interface {
    network    = "tf-vpc-824189"
    subnetwork = "subnet-02"
    access_config {
    }
  }
  metadata_startup_script = <<-EOT
        #!/bin/bash
    EOT
  allow_stopping_for_update = true
}