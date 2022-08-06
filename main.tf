// Declare the provider (google)
terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}

// declare module intances
module "instances" {
  source = "./modules/instances"
}

// declare module storage
module "storage" {
  source = "./modules/storage"
}

// declare the backend
terraform {
  backend "gcs" {
    bucket  = # bucket name
    prefix  = "terraform/state"
  }
}

// Using the module network
module "network" {
  source  = "terraform-google-modules/network/google"
  version = "3.4.0"

  project_id = var.project_id
  network_name = "tf-vpc-824189"
  routing_mode = "GLOBAL"
  
  subnets = [
        {
            subnet_name           = "subnet-01"
            subnet_ip             = "10.10.10.0/24"
            subnet_region         = "us-central1"
        },
        {
            subnet_name           = "subnet-02"
            subnet_ip             = "10.10.20.0/24"
            subnet_region         = "us-central1"
        }]
}

// Setting up a firewall rule inside the vpc already created
resource "google_compute_firewall" "default" {
  name          = "tf-firewall"
  network       = "projects/qwiklabs-gcp-01-3d9be9aded10/global/networks/tf-vpc-824189"
  allow {
    protocol    = "tcp"
    ports       = ["80"]
  }
  direction     = "INGRESS"
  source_ranges = ["0.0.0.0/0"]
}
