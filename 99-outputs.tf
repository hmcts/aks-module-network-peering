output "network_peering_result" {
  value = "${merge(
        data.null_data_source.network_peering_outputs.inputs
    )}"
}
