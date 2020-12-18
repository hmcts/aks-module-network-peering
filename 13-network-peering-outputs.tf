data "null_data_source" "network_peering_outputs" {
  inputs = {
    network_peering_requested_id = "${azurerm_virtual_network_peering.virtual_network_peering_requester.id}"
    network_peering_accepeter_id = "${azurerm_virtual_network_peering.virtual_network_peering_accepter.id}"
  }
}
