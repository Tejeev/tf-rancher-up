variable "do_token" {
  type        = string
  description = "DigitalOcean Authentication Token"
  default     = null
  sensitive   = true
}

variable "droplet_count" {
  type        = number
  description = "Number of droplets to create"
  default     = 3
  nullable    = false
}

variable "droplet_size" {
  type        = string
  description = "Size used for all droplets"
  default     = "s-2vcpu-4gb"
  nullable    = false

}

variable "prefix" {
  type        = string
  description = "Prefix added to names of all resources"
  default     = "rancher-terraform"
}

variable "tag_begin" {
  type        = number
  description = "Tag from this number when module is called more than once"
  default     = 1
}

variable "user_tag" {
  type        = string
  description = "FirstInitialLastname of user"
  nullable    = false
}

variable "ssh_key_name" {
  type        = string
  description = "Name of the public ssh key stored on DigitalOcean"
}

variable "ssh_private_key_path" {
  description = "Path to the private ssh key that matches the public ssh key from DigitalOcean"
}

variable "region" {
  description = "Region that droplets will be deployed to"
  type        = string
  default     = "sfo3"
}

variable "ssh_username" {
  description = "The user account used to connect to droplets via ssh"
  type        = string
  default     = "root"
  nullable    = false
}

variable "kube_config_path" {
  description = "The path to write the kubeconfig for the RKE cluster"
  type        = string
  default     = null
}

variable "kubernetes_version" {
  type        = string
  description = "Kubernetes version to use for the RKE cluster"
  default     = null
}

variable "rancher_password" {
  description = "Password to use for bootstrapping Rancher (min 12 characters)"
  default     = "initial-admin-password"
  type        = string
}

variable "rancher_version" {
  description = "Rancher version to install"
  default     = null
  type        = string
}

variable "wait" {
  description = "An optional wait before installing the Rancher helm chart"
  default     = "20s"
}