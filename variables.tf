variable "project_id" {
  description = "GCP Project ID"
  type        = string
}

variable "region" {
  description = "GCP Region"
  default     = ""
}

variable "zone" {
  description = "GCP Zone"
  default     = ""
}

variable "machine_type" {
  description = "GCP Machine_type"
  default     = ""
}
