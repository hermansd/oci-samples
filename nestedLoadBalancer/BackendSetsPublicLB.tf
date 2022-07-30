// Copyright (c) 2017, 2021, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Mozilla Public License v2.0

//DashboardServlet Backend Set Configuration
resource "oci_load_balancer_backend_set" "pubLB_priLB1_backend_set" {
    #Required
    health_checker {
        #Required
        protocol = "HTTP"

        #Optional
        port = 80
        return_code = "200"
        url_path = "/"
    }
    load_balancer_id = oci_load_balancer_load_balancer.pubLB.id
    name = var.privateLB1.display_name
    policy = "LEAST_CONNECTIONS"
}

resource "oci_load_balancer_backend" "pubLB_priLB1_backend" {
    #Required
    backendset_name = oci_load_balancer_backend_set.pubLB_priLB1_backend_set.name   
    ip_address = oci_load_balancer_load_balancer.priLB1.ip_addresses[0]
    load_balancer_id = oci_load_balancer_load_balancer.pubLB.id
    port = 80
}

//Scribe Backend Set Configuration
resource "oci_load_balancer_backend_set" "pubLB_priLB2_backend_set" {
    #Required
    health_checker {
        #Required
        protocol = "HTTP"

        #Optional
        port = 80
        return_code = "200"
        url_path = "/dwShell/${var.campusName.one}_PROD/"
    }
    load_balancer_id = oci_load_balancer_load_balancer.pubLB.id
    name =  var.privateLB2.display_name
    policy = "LEAST_CONNECTIONS"
}

resource "oci_load_balancer_backend" "pubLB_priLB2_backend" {
    #Required
    backendset_name = oci_load_balancer_backend_set.pubLB_priLB1_backend_set.name   
    ip_address = oci_load_balancer_load_balancer.priLB2.ip_addresses[0]
    load_balancer_id = oci_load_balancer_load_balancer.pubLB.id
    port = 80
}
