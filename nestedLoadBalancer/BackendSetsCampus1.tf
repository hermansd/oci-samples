// Copyright (c) 2017, 2021, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Mozilla Public License v2.0

//DashboardServlet Backend Set Configuration
resource "oci_load_balancer_backend_set" "priLb1_5559_backend_set" {
    #Required
    health_checker {
        #Required
        protocol = "HTTP"

        #Optional
        port = 5559
        return_code = "200"
        url_path = "/"
    }
    load_balancer_id = oci_load_balancer_load_balancer.priLb1.id
    name = "DashboardServlet_${var.campusName.one}"
    policy = "LEAST_CONNECTIONS"
}

resource "oci_load_balancer_backend" "priLb1_5559_backend" {
    #Required
    backendset_name = oci_load_balancer_backend_set.priLb1_5559_backend_set.name   
    ip_address = var.server_ip_address
    load_balancer_id = oci_load_balancer_load_balancer.priLb1.id
    port = 5559
}

//Scribe Backend Set Configuration
resource "oci_load_balancer_backend_set" "priLb1_5659_backend_set" {
    #Required
    health_checker {
        #Required
        protocol = "HTTP"

        #Optional
        port = 5659
        return_code = "200"
        url_path = "/dwShell/${var.campusName.one}_PROD/"
    }
    load_balancer_id = oci_load_balancer_load_balancer.priLb1.id
    name = "Scribe_${var.campusName.one}"
    policy = "LEAST_CONNECTIONS"
}

resource "oci_load_balancer_backend" "priLb1_5659_backend" {
    #Required
    backendset_name = oci_load_balancer_backend_set.priLb1_5659_backend_set.name   
    ip_address = var.server_ip_address
    load_balancer_id = oci_load_balancer_load_balancer.priLb1.id
    port = 5659
}

//Controler Backend Set Configuration
resource "oci_load_balancer_backend_set" "priLb1_5759_backend_set" {
    #Required
    health_checker {
        #Required
        protocol = "HTTP"

        #Optional
        port = 5759
        return_code = "200"
        url_path = "/"
    }
    load_balancer_id = oci_load_balancer_load_balancer.priLb1.id
    name = "Controler_${var.campusName.one}"
    policy = "LEAST_CONNECTIONS"
}

resource "oci_load_balancer_backend" "priLb1_5759_backend" {
    #Required
    backendset_name = oci_load_balancer_backend_set.priLb1_5759_backend_set.name   
    ip_address = var.server_ip_address
    load_balancer_id = oci_load_balancer_load_balancer.priLb1.id
    port = 5759
}

//TransitUI Backend Set Configuration
resource "oci_load_balancer_backend_set" "priLb1_5859_backend_set" {
    #Required
    health_checker {
        #Required
        protocol = "HTTP"

        #Optional
        port = 5859
        return_code = "200"
        url_path = "/"
    }
    load_balancer_id = oci_load_balancer_load_balancer.priLb1.id
    name = "TransitUI_${var.campusName.one}"
    policy = "LEAST_CONNECTIONS"
}

resource "oci_load_balancer_backend" "priLb1_5859_backend" {
    #Required
    backendset_name = oci_load_balancer_backend_set.priLb1_5859_backend_set.name   
    ip_address = var.server_ip_address
    load_balancer_id = oci_load_balancer_load_balancer.priLb1.id
    port = 5859
}


//Composer Backend Set Configuration
resource "oci_load_balancer_backend_set" "priLb1_5959_backend_set" {
    #Required
    health_checker {
        #Required
        protocol = "HTTP"

        #Optional
        port = 5959
        return_code = "200"
        url_path = "/"
    }
    load_balancer_id = oci_load_balancer_load_balancer.priLb1.id
    name = "Composer_${var.campusName.one}"
    policy = "LEAST_CONNECTIONS"
}

resource "oci_load_balancer_backend" "priLb1_5959_backend" {
    #Required
    backendset_name = oci_load_balancer_backend_set.priLb1_5959_backend_set.name   
    ip_address = var.server_ip_address
    load_balancer_id = oci_load_balancer_load_balancer.priLb1.id
    port = 5959
}

//Dashboard Backend Set Configuration
resource "oci_load_balancer_backend_set" "priLb1_6059_backend_set" {
    #Required
    health_checker {
        #Required
        protocol = "HTTP"

        #Optional
        port = 6059
        return_code = "200"
        url_path = "/"
    }
    load_balancer_id = oci_load_balancer_load_balancer.priLb1.id
    name = "Dashboard_${var.campusName.one}"
    policy = "LEAST_CONNECTIONS"
}

resource "oci_load_balancer_backend" "priLb1_6059_backend" {
    #Required
    backendset_name = oci_load_balancer_backend_set.priLb1_6059_backend_set.name   
    ip_address = var.server_ip_address
    load_balancer_id = oci_load_balancer_load_balancer.priLb1.id
    port = 6059
}

