data "null_data_source" "debug_outputs" {
  count = "${var.enable_debug == "true" ? 1 : 0}"

  inputs = {
    deploy_environment     = "${var.deploy_environment}"
    network_location       = "${var.network_location}"
    requester_network_name = "${var.requester_network_name}"
    requester_network_id   = "${var.requester_network_id}"
    accepter_network_name  = "${var.accepter_network_name}"
    accepter_network_id    = "${var.accepter_network_id}"
  }
}

output "debug_config" {
  value = "${ data.null_data_source.debug_outputs.*.inputs}"
}
