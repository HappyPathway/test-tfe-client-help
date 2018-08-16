data "external" "nodeping" {
  program = ["/bin/bash", "${path.module}/nodeping_probe_ips.sh"]
}

output "nodeping_probe_ips" {
  value = "${module.test.nodeping_probe_ips}"
}

