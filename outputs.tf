output "nodeping_probe_ips" {
  value = "${data.external.nodeping.result}"
}