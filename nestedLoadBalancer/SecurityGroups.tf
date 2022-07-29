resource "oci_core_network_security_group_security_rule" "lb_security_group_https_security_rule" {
    #Required
    network_security_group_id = oci_core_network_security_group.lb_security_group.id
    direction = "INGRESS"
    protocol = "6"
    source = "0.0.0.0/0"

    tcp_options {
        destination_port_range {
          min = 443
          max = 443
        }
    }
    #Optional
    description = "Inbount HTTPS Traffic"
}


resource "oci_core_network_security_group_security_rule" "lb_security_group_http_security_rule" {
    #Required
    network_security_group_id = oci_core_network_security_group.lb_security_group.id
    direction = "INGRESS"
    protocol = "6"
    source = "0.0.0.0/0"

    tcp_options {
        destination_port_range {
          min = 80
          max = 80
        }
    }
    #Optional
    description = "Inbount HTTP Traffic"
}

resource "oci_core_network_security_group_security_rule" "server_security_group_name_lbAccess_5559_security_rule" {
    #Required
    network_security_group_id = oci_core_network_security_group.server_security_group_name.id
    direction = "INGRESS"
    protocol = "6"
    source_type = "NETWORK_SECURITY_GROUP"
    source = oci_core_network_security_group.lb_security_group.id

    tcp_options {
        destination_port_range {
          min = 5559
          max = 5559
        }
    }
    #Optional
    description = "Application server access"
}

resource "oci_core_network_security_group_security_rule" "server_security_group_name_lbAccess_5659_security_rule" {
    #Required
    network_security_group_id = oci_core_network_security_group.server_security_group_name.id
    direction = "INGRESS"
    protocol = "6"
    source_type = "NETWORK_SECURITY_GROUP"
    source = oci_core_network_security_group.lb_security_group.id

    tcp_options {
        destination_port_range {
          min = 5659
          max = 5659
        }
    }
    #Optional
    description = "Application server access"
}

resource "oci_core_network_security_group_security_rule" "server_security_group_name_lbAccess_5759_security_rule" {
    #Required
    network_security_group_id = oci_core_network_security_group.server_security_group_name.id
    direction = "INGRESS"
    protocol = "6"
    source_type = "NETWORK_SECURITY_GROUP"
    source = oci_core_network_security_group.lb_security_group.id

    tcp_options {
        destination_port_range {
          min = 5759
          max = 5759
        }
    }
    #Optional
    description = "Application server access"
}

resource "oci_core_network_security_group_security_rule" "server_security_group_name_lbAccess_5859_security_rule" {
    #Required
    network_security_group_id = oci_core_network_security_group.server_security_group_name.id
    direction = "INGRESS"
    protocol = "6"
    source_type = "NETWORK_SECURITY_GROUP"
    source = oci_core_network_security_group.lb_security_group.id

    tcp_options {
        destination_port_range {
          min = 5859
          max = 5859
        }
    }
    #Optional
    description = "Application server access"
}
    resource "oci_core_network_security_group_security_rule" "server_security_group_name_lbAccess_5959_security_rule" {
    #Required
    network_security_group_id = oci_core_network_security_group.server_security_group_name.id
    direction = "INGRESS"
    protocol = "6"
    source_type = "NETWORK_SECURITY_GROUP"
    source = oci_core_network_security_group.lb_security_group.id

    tcp_options {
        destination_port_range {
          min = 5959
          max = 5959
        }
    }
    #Optional
    description = "Application server access"

}
    resource "oci_core_network_security_group_security_rule" "server_security_group_name_lbAccess_6059_security_rule" {
    #Required
    network_security_group_id = oci_core_network_security_group.server_security_group_name.id
    direction = "INGRESS"
    protocol = "6"
    source_type = "NETWORK_SECURITY_GROUP"
    source = oci_core_network_security_group.lb_security_group.id

    tcp_options {
        destination_port_range {
          min = 6059
          max = 6059
        }
    }
    #Optional
     description = "Application server access"

}


    resource "oci_core_network_security_group_security_rule" "server_security_group_name_lbAccess_5560_security_rule" {
    #Required
    network_security_group_id = oci_core_network_security_group.server_security_group_name.id
    direction = "INGRESS"
    protocol = "6"
    source_type = "NETWORK_SECURITY_GROUP"
    source = oci_core_network_security_group.lb_security_group.id

    tcp_options {
        destination_port_range {
          min = 5560
          max = 5560
        }
    }
    #Optional
     description = "Application server access"

}


resource "oci_core_network_security_group_security_rule" "server_security_group_name_lbAccess_5660_security_rule" {
    #Required
    network_security_group_id = oci_core_network_security_group.server_security_group_name.id
    direction = "INGRESS"
    protocol = "6"
    source_type = "NETWORK_SECURITY_GROUP"
    source = oci_core_network_security_group.lb_security_group.id

    tcp_options {
        destination_port_range {
          min = 5660
          max = 5660
        }
    }
    #Optional
    description = "Application server access"
}

resource "oci_core_network_security_group_security_rule" "server_security_group_name_lbAccess_5760_security_rule" {
    #Required
    network_security_group_id = oci_core_network_security_group.server_security_group_name.id
    direction = "INGRESS"
    protocol = "6"
    source_type = "NETWORK_SECURITY_GROUP"
    source = oci_core_network_security_group.lb_security_group.id

    tcp_options {
        destination_port_range {
          min = 5760
          max = 5760
        }
    }
    #Optional
     description = "Application server access"

}


resource "oci_core_network_security_group_security_rule" "server_security_group_name_lbAccess_5860_security_rule" {
    #Required
    network_security_group_id = oci_core_network_security_group.server_security_group_name.id
    direction = "INGRESS"
    protocol = "6"
    source_type = "NETWORK_SECURITY_GROUP"
    source = oci_core_network_security_group.lb_security_group.id

    tcp_options {
        destination_port_range {
          min = 5860
          max = 5860
        }
    }
    #Optional
     description = "Application server access"

}


    resource "oci_core_network_security_group_security_rule" "server_security_group_name_lbAccess_5960_security_rule" {
    #Required
    network_security_group_id = oci_core_network_security_group.server_security_group_name.id
    direction = "INGRESS"
    protocol = "6"
    source_type = "NETWORK_SECURITY_GROUP"
    source = oci_core_network_security_group.lb_security_group.id

    tcp_options {
        destination_port_range {
          min = 5960
          max = 5960
        }
    }
    #Optional
 description = "Application server access"

}


    resource "oci_core_network_security_group_security_rule" "server_security_group_name_lbAccess_6060_security_rule" {
    #Required
    network_security_group_id = oci_core_network_security_group.server_security_group_name.id
    direction = "INGRESS"
    protocol = "6"
    source_type = "NETWORK_SECURITY_GROUP"
    source = oci_core_network_security_group.lb_security_group.id

    tcp_options {
        destination_port_range {
          min = 6060
          max = 6060
        }
    }
    #Optional
     description = "Application server access"

}


    resource "oci_core_network_security_group_security_rule" "server_security_group_name_lbAccess_5561_security_rule" {
    #Required
    network_security_group_id = oci_core_network_security_group.server_security_group_name.id
    direction = "INGRESS"
    protocol = "6"
    source_type = "NETWORK_SECURITY_GROUP"
    source = oci_core_network_security_group.lb_security_group.id

    tcp_options {
        destination_port_range {
          min = 5561
          max = 5561
        }
    }
    #Optional
    description = "Application server access"
}

resource "oci_core_network_security_group_security_rule" "server_security_group_name_lbAccess_5661_security_rule" {
    #Required
    network_security_group_id = oci_core_network_security_group.server_security_group_name.id
    direction = "INGRESS"
    protocol = "6"
    source_type = "NETWORK_SECURITY_GROUP"
    source = oci_core_network_security_group.lb_security_group.id

    tcp_options {
        destination_port_range {
          min = 5661
          max = 5661
        }
    }
    #Optional
    description = "Application server access"
}

resource "oci_core_network_security_group_security_rule" "server_security_group_name_lbAccess_5761_security_rule" {
    #Required
    network_security_group_id = oci_core_network_security_group.server_security_group_name.id
    direction = "INGRESS"
    protocol = "6"
    source_type = "NETWORK_SECURITY_GROUP"
    source = oci_core_network_security_group.lb_security_group.id

    tcp_options {
        destination_port_range {
          min = 5761
          max = 5761
        }
    }
    #Optional
     description = "Application server access"

}


resource "oci_core_network_security_group_security_rule" "server_security_group_name_lbAccess_5861_security_rule" {
    #Required
    network_security_group_id = oci_core_network_security_group.server_security_group_name.id
    direction = "INGRESS"
    protocol = "6"
    source_type = "NETWORK_SECURITY_GROUP"
    source = oci_core_network_security_group.lb_security_group.id

    tcp_options {
        destination_port_range {
          min = 5861
          max = 5861
        }
    }
    #Optional
     description = "Application server access"

}


    resource "oci_core_network_security_group_security_rule" "server_security_group_name_lbAccess_5961_security_rule" {
    #Required
    network_security_group_id = oci_core_network_security_group.server_security_group_name.id
    direction = "INGRESS"
    protocol = "6"
    source_type = "NETWORK_SECURITY_GROUP"
    source = oci_core_network_security_group.lb_security_group.id

    tcp_options {
        destination_port_range {
          min = 5961
          max = 5961
        }
    }
    #Optional
     description = "Application server access"

}


    resource "oci_core_network_security_group_security_rule" "server_security_group_name_lbAccess_6061_security_rule" {
    #Required
    network_security_group_id = oci_core_network_security_group.server_security_group_name.id
    direction = "INGRESS"
    protocol = "6"
    source_type = "NETWORK_SECURITY_GROUP"
    source = oci_core_network_security_group.lb_security_group.id

    tcp_options {
        destination_port_range {
          min = 6061
          max = 6061
        }
    }
    #Optional
     description = "Application server access"

}


    resource "oci_core_network_security_group_security_rule" "server_security_group_name_lbAccess_5562_security_rule" {
    #Required
    network_security_group_id = oci_core_network_security_group.server_security_group_name.id
    direction = "INGRESS"
    protocol = "6"
    source_type = "NETWORK_SECURITY_GROUP"
    source = oci_core_network_security_group.lb_security_group.id

    tcp_options {
        destination_port_range {
          min = 5562
          max = 5562
        }
    }
    #Optional
    description = "Application server access"
}

resource "oci_core_network_security_group_security_rule" "server_security_group_name_lbAccess_5662_security_rule" {
    #Required
    network_security_group_id = oci_core_network_security_group.server_security_group_name.id
    direction = "INGRESS"
    protocol = "6"
    source_type = "NETWORK_SECURITY_GROUP"
    source = oci_core_network_security_group.lb_security_group.id

    tcp_options {
        destination_port_range {
          min = 5662
          max = 5662
        }
    }
    #Optional
    description = "Application server access"
}

resource "oci_core_network_security_group_security_rule" "server_security_group_name_lbAccess_5762_security_rule" {
    #Required
    network_security_group_id = oci_core_network_security_group.server_security_group_name.id
    direction = "INGRESS"
    protocol = "6"
    source_type = "NETWORK_SECURITY_GROUP"
    source = oci_core_network_security_group.lb_security_group.id

    tcp_options {
        destination_port_range {
          min = 5762
          max = 5762
        }
    }
    #Optional
     description = "Application server access"

}


resource "oci_core_network_security_group_security_rule" "server_security_group_name_lbAccess_5862_security_rule" {
    #Required
    network_security_group_id = oci_core_network_security_group.server_security_group_name.id
    direction = "INGRESS"
    protocol = "6"
    source_type = "NETWORK_SECURITY_GROUP"
    source = oci_core_network_security_group.lb_security_group.id

    tcp_options {
        destination_port_range {
          min = 5862
          max = 5862
        }
    }
    #Optional
     description = "Application server access"

}


    resource "oci_core_network_security_group_security_rule" "server_security_group_name_lbAccess_5962_security_rule" {
    #Required
    network_security_group_id = oci_core_network_security_group.server_security_group_name.id
    direction = "INGRESS"
    protocol = "6"
    source_type = "NETWORK_SECURITY_GROUP"
    source = oci_core_network_security_group.lb_security_group.id

    tcp_options {
        destination_port_range {
          min = 5962
          max = 5962
        }
    }
    #Optional
     description = "Application server access"

}


    resource "oci_core_network_security_group_security_rule" "server_security_group_name_lbAccess_6062_security_rule" {
    #Required
    network_security_group_id = oci_core_network_security_group.server_security_group_name.id
    direction = "INGRESS"
    protocol = "6"
    source_type = "NETWORK_SECURITY_GROUP"
    source = oci_core_network_security_group.lb_security_group.id

    tcp_options {
        destination_port_range {
          min = 6062
          max = 6062
        }
    }
    #Optional
     description = "Application server access"

}
