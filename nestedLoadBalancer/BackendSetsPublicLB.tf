// Copyright (c) 2017, 2021, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Mozilla Public License v2.0

//DashboardServlet Backend Set Configuration
resource "oci_load_balancer_backend_set" "pubLB_priLB1_backend_set" {
    health_checker {
        protocol = "HTTP"
        port = 443
        return_code = "200"
        url_path = "/"
    }
    load_balancer_id = oci_load_balancer_load_balancer.pubLB.id
    name = var.privateLB1.display_name
    policy = "LEAST_CONNECTIONS"
    ssl_configuration {

        #Optional
        certificate_name = oci_load_balancer_certificate.publicLB_priLB1_certificate.certificate_name
        cipher_suite_name = "oci-wider-compatible-ssl-cipher-suite-v1"
        protocols = ["TLSv1.2","TLSv1","TLSv1.1"]
        verify_peer_certificate = false
    }
}

resource "oci_load_balancer_backend" "pubLB_priLB1_backend" {
    backendset_name = oci_load_balancer_backend_set.pubLB_priLB1_backend_set.name   
    ip_address = oci_load_balancer_load_balancer.priLB1.ip_addresses[0]
    load_balancer_id = oci_load_balancer_load_balancer.pubLB.id
    port = 443
}

//Scribe Backend Set Configuration
resource "oci_load_balancer_backend_set" "pubLB_priLB2_backend_set" {
    health_checker {
        protocol = "HTTP"
        port = 443
        return_code = "200"
        url_path = "/"
    }
    load_balancer_id = oci_load_balancer_load_balancer.pubLB.id
    name =  var.privateLB2.display_name
    policy = "LEAST_CONNECTIONS"
    ssl_configuration {

        #Optional
        certificate_name = oci_load_balancer_certificate.publicLB_priLB2_certificate.certificate_name
        cipher_suite_name = "oci-wider-compatible-ssl-cipher-suite-v1"
        protocols = ["TLSv1.2","TLSv1","TLSv1.1"]
        verify_peer_certificate = false
    }
}

resource "oci_load_balancer_backend" "pubLB_priLB2_backend" {
    backendset_name = oci_load_balancer_backend_set.pubLB_priLB2_backend_set.name   
    ip_address = oci_load_balancer_load_balancer.priLB2.ip_addresses[0]
    load_balancer_id = oci_load_balancer_load_balancer.pubLB.id
    port = 443
}

