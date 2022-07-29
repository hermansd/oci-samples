// Copyright (c) 2017, 2021, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Mozilla Public License v2.0

//DashboardServlet Backend Set Configuration
resource "oci_load_balancer_backend_set" "priLb2_5550_backend_set" {
    #Required
    health_checker {
        #Required
        protocol = "HTTP"

        #Optional
        port = 5550
        return_code = "200"
        url_path = "/"
    }
    load_balancer_id = oci_load_balancer_load_balancer.priLb2.id
    name = "DashboardServlet_Campus3"
    policy = "LEAST_CONNECTIONS"
}

resource "oci_load_balancer_backend" "priLb2_5550_backend" {
    #Required
    backendset_name = oci_load_balancer_backend_set.priLb2_5550_backend_set.name   
    ip_address = var.server_ip_address
    load_balancer_id = oci_load_balancer_load_balancer.priLb2.id
    port = 5550
}

//Scribe Backend Set Configuration
resource "oci_load_balancer_backend_set" "priLb2_5650_backend_set" {
    #Required
    health_checker {
        #Required
        protocol = "HTTP"

        #Optional
        port = 5650
        return_code = "200"
        url_path = "/dwShell/campus3_PROD"
    }
    load_balancer_id = oci_load_balancer_load_balancer.priLb2.id
    name = "Scribe_Campus3"
    policy = "LEAST_CONNECTIONS"
}

resource "oci_load_balancer_backend" "priLb2_5650_backend" {
    #Required
    backendset_name = oci_load_balancer_backend_set.priLb2_5650_backend_set.name   
    ip_address = var.server_ip_address
    load_balancer_id = oci_load_balancer_load_balancer.priLb2.id
    port = 5650
}

//Controler Backend Set Configuration
resource "oci_load_balancer_backend_set" "priLb2_5750_backend_set" {
    #Required
    health_checker {
        #Required
        protocol = "HTTP"

        #Optional
        port = 5750
        return_code = "200"
        url_path = "/"
    }
    load_balancer_id = oci_load_balancer_load_balancer.priLb2.id
    name = "Controler_Campus3"
    policy = "LEAST_CONNECTIONS"
}

resource "oci_load_balancer_backend" "priLb2_5750_backend" {
    #Required
    backendset_name = oci_load_balancer_backend_set.priLb2_5750_backend_set.name   
    ip_address = var.server_ip_address
    load_balancer_id = oci_load_balancer_load_balancer.priLb2.id
    port = 5750
}

//TransitUI Backend Set Configuration
resource "oci_load_balancer_backend_set" "priLb2_5850_backend_set" {
    #Required
    health_checker {
        #Required
        protocol = "HTTP"

        #Optional
        port = 5850
        return_code = "200"
        url_path = "/"
    }
    load_balancer_id = oci_load_balancer_load_balancer.priLb2.id
    name = "TransitUI_Campus3"
    policy = "LEAST_CONNECTIONS"
}

resource "oci_load_balancer_backend" "priLb2_5850_backend" {
    #Required
    backendset_name = oci_load_balancer_backend_set.priLb2_5850_backend_set.name   
    ip_address = var.server_ip_address
    load_balancer_id = oci_load_balancer_load_balancer.priLb2.id
    port = 5850
}


//Composer Backend Set Configuration
resource "oci_load_balancer_backend_set" "priLb2_5950_backend_set" {
    #Required
    health_checker {
        #Required
        protocol = "HTTP"

        #Optional
        port = 5950
        return_code = "200"
        url_path = "/"
    }
    load_balancer_id = oci_load_balancer_load_balancer.priLb2.id
    name = "Composer_Campus3"
    policy = "LEAST_CONNECTIONS"
}

resource "oci_load_balancer_backend" "priLb2_5950_backend" {
    #Required
    backendset_name = oci_load_balancer_backend_set.priLb2_5950_backend_set.name   
    ip_address = var.server_ip_address
    load_balancer_id = oci_load_balancer_load_balancer.priLb2.id
    port = 5950
}

//Dashboard Backend Set Configuration
resource "oci_load_balancer_backend_set" "priLb2_6050_backend_set" {
    #Required
    health_checker {
        #Required
        protocol = "HTTP"

        #Optional
        port = 6050
        return_code = "200"
        url_path = "/"
    }
    load_balancer_id = oci_load_balancer_load_balancer.priLb2.id
    name = "Dashboard_Campus3"
    policy = "LEAST_CONNECTIONS"
}

resource "oci_load_balancer_backend" "priLb2_6050_backend" {
    
    #Required
    backendset_name = oci_load_balancer_backend_set.priLb2_6050_backend_set.name   
    ip_address = var.server_ip_address
    load_balancer_id = oci_load_balancer_load_balancer.priLb2.id
    port = 6050
}

