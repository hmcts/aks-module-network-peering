data "azurerm_client_config" "current" {}

locals {
  slug_location = "${lower(replace(var.network_location, " ", "."))}"
}

data "null_data_source" "network_defaults" {
  inputs = {
    name_prefix = "${format("%s",
            var.requester_network_name
        )}"
  }
}
