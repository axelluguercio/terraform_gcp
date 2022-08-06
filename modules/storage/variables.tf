variable "region" {
  description = "Region set for the instance"
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "Zone set for the instance"
  type        = string
  default     = "us-central1-a"
}

variable "project_id" {
  type        = string
  "The id of the google cloud project"
}

// backend name
variable "name" {
    description = "bucket name"
    type        = string
    default     = "tf-bucket-157052"
}