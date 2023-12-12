output "rke_kubeconfig_filename" {
  description = "Kubeconfig file location"
  value       = var.create_kubeconfig_file ? local_file.kube_config_yaml[0].filename : null
}

output "dependency" {
  value = rke_cluster.this.kube_config_yaml
}