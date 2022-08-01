// Copyright (c) 2017, 2021, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Mozilla Public License v2.0

/*
 * This example creates a private load balancer on one subnet in a single AD.
 */


provider "oci" {
  tenancy_ocid     = var.tenancy_ocid
  user_ocid        = var.user_ocid
  fingerprint      = var.fingerprint
  private_key_path = var.private_key_path
  region           = var.region
}


/* Load Balancer */

resource "oci_load_balancer_load_balancer" "priLB1" {
  shape          = "flexible"
  shape_details{
    maximum_bandwidth_in_mbps = var.privateLB1.maximum_bandwidth_in_mbps
    minimum_bandwidth_in_mbps = var.privateLB1.minimum_bandwidth_in_mbps
  }
  compartment_id = var.privateLB1.compartment_ocid
  subnet_ids     = [var.privateLB1.subnet_ocid]
  display_name   = var.privateLB1.display_name
  is_private                 = true
  network_security_group_ids = [oci_core_network_security_group.lb_security_group.id]
}

resource "oci_load_balancer_load_balancer" "priLB2" {
  shape          = "flexible"
  shape_details{
    maximum_bandwidth_in_mbps = var.privateLB2.maximum_bandwidth_in_mbps
    minimum_bandwidth_in_mbps = var.privateLB2.minimum_bandwidth_in_mbps
  }
  compartment_id = var.privateLB2.compartment_ocid
  subnet_ids     = [var.privateLB2.subnet_ocid]
  display_name   = var.privateLB2.display_name
  is_private                 = true
  network_security_group_ids = [oci_core_network_security_group.lb_security_group.id]
}

resource "oci_load_balancer_load_balancer" "pubLB" {
  shape          = "flexible"
  shape_details{
    maximum_bandwidth_in_mbps = var.publicLB1.maximum_bandwidth_in_mbps
    minimum_bandwidth_in_mbps = var.publicLB1.minimum_bandwidth_in_mbps
  }
  compartment_id = var.publicLB1.compartment_ocid
  subnet_ids     = [var.publicLB1.subnet_ocid]
  display_name   = var.publicLB1.display_name
  is_private                 = false
  network_security_group_ids = [oci_core_network_security_group.lb_security_group.id]
  reserved_ips {
        id = var.publicLB1.reserved_ip_ocid
    }
}

resource "oci_core_network_security_group" "lb_security_group" {
    compartment_id = var.net_compartment_ocid
    vcn_id = var.vcn_ocid
    display_name = var.lb_security_group_name
}

resource "oci_core_network_security_group" "server_security_group_name" {
    compartment_id = var.net_compartment_ocid
    vcn_id = var.vcn_ocid
    display_name = var.server_security_group_name
}


resource "oci_load_balancer_certificate" "publicLB_certificate" {
    #Required
    certificate_name = var.publicLB1.certificate_name
    load_balancer_id = oci_load_balancer_load_balancer.pubLB.id

    #Optional
    ca_certificate = var.publicLB1.ca_certificate
    private_key = var.publicLB1.private_key
    public_certificate = var.publicLB1.public_certificate
}

resource "oci_load_balancer_certificate" "publicLB_priLB1_certificate" {
    #Required
    certificate_name = var.privateLB1.certificate_name
    load_balancer_id = oci_load_balancer_load_balancer.pubLB.id

    #Optional
    ca_certificate = var.privateLB1.ca_certificate
    public_certificate = var.privateLB1.public_certificate
}

resource "oci_load_balancer_certificate" "publicLB_priLB2_certificate" {
    #Required
    certificate_name = var.privateLB2.certificate_name
    load_balancer_id = oci_load_balancer_load_balancer.pubLB.id

    #Optional
    ca_certificate = var.privateLB2.ca_certificate
    public_certificate = var.privateLB2.public_certificate
}

resource "oci_load_balancer_certificate" "priLB1_certificate" {
    #Required
    certificate_name = var.privateLB1.certificate_name
    load_balancer_id = oci_load_balancer_load_balancer.priLB1.id

    #Optional
    ca_certificate = var.privateLB1.ca_certificate
    private_key = var.privateLB1.private_key
    public_certificate = var.privateLB1.public_certificate
}

resource "oci_load_balancer_certificate" "priLB2_certificate" {
    #Required
    certificate_name = var.privateLB2.certificate_name
    load_balancer_id = oci_load_balancer_load_balancer.priLB2.id

    #Optional
    ca_certificate = var.privateLB2.ca_certificate
    private_key = var.privateLB2.private_key
    public_certificate = var.privateLB2.public_certificate
}

resource "oci_load_balancer_listener" "publicLB_https_listener" {
    default_backend_set_name = oci_load_balancer_backend_set.pubLB_priLB1_backend_set.name
    load_balancer_id = oci_load_balancer_load_balancer.pubLB.id
    name = "DeegreeWorksHTTPs"
    port = "443"
    protocol = "HTTP2"
    routing_policy_name = oci_load_balancer_load_balancer_routing_policy.pubLB_main_routing_policy.name
    ssl_configuration {
      certificate_name = oci_load_balancer_certificate.publicLB_certificate.certificate_name
      cipher_suite_name = "oci-default-http2-ssl-cipher-suite-v1"
      protocols = ["TLSv1.2"]
      verify_peer_certificate = false
    }
}

resource "oci_load_balancer_listener" "publicLB_http_listener" {
    default_backend_set_name = oci_load_balancer_backend_set.pubLB_priLB1_backend_set.name
    load_balancer_id = oci_load_balancer_load_balancer.pubLB.id
    name = "DeegreeWorksHTTP"
    port = "80"
    protocol = "HTTP"
    //routing_policy_name = oci_load_balancer_load_balancer_routing_policy.pubLB_main_routing_policy.name
    rule_set_names = [oci_load_balancer_rule_set.priLB1_rule_set.name]
}


resource "oci_load_balancer_listener" "priLB1_https_listener" {
    default_backend_set_name = oci_load_balancer_backend_set.priLB1_5559_backend_set.name
    load_balancer_id = oci_load_balancer_load_balancer.priLB1.id
    name = "DeegreeWorksHTTPs"
    port = "443"
    protocol = "HTTP2"
    routing_policy_name = oci_load_balancer_load_balancer_routing_policy.priLB1_main_routing_policy.name
    ssl_configuration {
      certificate_name = oci_load_balancer_certificate.priLB1_certificate.certificate_name
      cipher_suite_name = "oci-default-http2-ssl-cipher-suite-v1"
      protocols = ["TLSv1.2"]
      verify_peer_certificate = false
    }
}

resource "oci_load_balancer_listener" "priLB1_http_listener" {
    default_backend_set_name = oci_load_balancer_backend_set.priLB1_5559_backend_set.name
    load_balancer_id = oci_load_balancer_load_balancer.priLB1.id
    name = "DeegreeWorksHTTP"
    port = "80"
    protocol = "HTTP"
    routing_policy_name = oci_load_balancer_load_balancer_routing_policy.priLB1_main_routing_policy.name
}

resource "oci_load_balancer_listener" "priLB2_https_listener" {
    default_backend_set_name = oci_load_balancer_backend_set.priLB2_5550_backend_set.name
    load_balancer_id = oci_load_balancer_load_balancer.priLB2.id
    name = "DeegreeWorksHTTPs"
    port = "443"
    protocol = "HTTP2"
    routing_policy_name = oci_load_balancer_load_balancer_routing_policy.priLB2_main_routing_policy.name
    ssl_configuration {
      certificate_name = oci_load_balancer_certificate.priLB2_certificate.certificate_name
      cipher_suite_name = "oci-default-http2-ssl-cipher-suite-v1"
      protocols = ["TLSv1.2"]
      verify_peer_certificate = false
    }
}
resource "oci_load_balancer_listener" "priLB2_http_listener" {
    default_backend_set_name = oci_load_balancer_backend_set.priLB2_5550_backend_set.name
    load_balancer_id = oci_load_balancer_load_balancer.priLB2.id
    name = "DeegreeWorksHTTP"
    port = "80"
    protocol = "HTTP"
    routing_policy_name = oci_load_balancer_load_balancer_routing_policy.priLB2_main_routing_policy.name
}


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

resource "oci_load_balancer_rule_set" "priLB1_rule_set" {
    #Required
    items {
        #Required
        action = "REDIRECT"
        conditions {
            #Required
            attribute_name = "PATH"
            attribute_value = "/"
            operator        = "FORCE_LONGEST_PREFIX_MATCH"
        }
        redirect_uri {
            protocol = "https"
            host     = "{host}"
            port     = 443
            path     = "{path}"
        }
    }
    load_balancer_id = oci_load_balancer_load_balancer.pubLB.id
    name = "RedirectHTTPTraffic"
}

