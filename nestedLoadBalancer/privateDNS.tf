resource "oci_dns_rrset" "priLB1_rrset" {
    domain = var.privateLB1.dns
    rtype = "A"
    zone_name_or_id = "ocid1.dns-zone.oc1.phx.aaaaaaaafwjccixwds4myrdhf5lb5r4ugsmvlpewuxfmljdfht4z4z3zmjea"

    items {
        domain = var.privateLB1.dns
        rdata = oci_load_balancer_load_balancer.priLB1.ip_addresses[0]
        rtype = "A"
        ttl = 30
    }
}

resource "oci_dns_rrset" "priLB2_rrset" {
    domain = var.privateLB2.dns
    rtype = "A"
    zone_name_or_id = "ocid1.dns-zone.oc1.phx.aaaaaaaafwjccixwds4myrdhf5lb5r4ugsmvlpewuxfmljdfht4z4z3zmjea"

    items {
        domain = var.privateLB2.dns
        rdata = oci_load_balancer_load_balancer.priLB2.ip_addresses[0]
        rtype = "A"
        ttl = 30
    }
}