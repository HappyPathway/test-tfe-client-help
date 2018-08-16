data "external" "nodeping" {
  program = ["/bin/bash", "${path.module}/nodeping_probe_ips.sh"]
}

