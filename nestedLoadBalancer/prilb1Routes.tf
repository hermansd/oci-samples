// Copyright (c) 2017, 2021, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Mozilla Public License v2.0

resource "oci_load_balancer_load_balancer_routing_policy" "priLB1_main_routing_policy" {

    condition_language_version = "V1"
    load_balancer_id = oci_load_balancer_load_balancer.priLB1.id
    name = "${var.privateLB1.display_name}Main"
    rules {
        actions {
            name = "FORWARD_TO_BACKENDSET"
            backend_set_name = oci_load_balancer_backend_set.priLB1_5559_backend_set.name
        }
        condition = "any(http.request.url.path sw (i '/DashboardServlet/${var.campusName.one}_prod'))"
        name = "DashboardServlet_${var.campusName.one}"
    }
    rules {
        actions {
            name = "FORWARD_TO_BACKENDSET"
            backend_set_name = oci_load_balancer_backend_set.priLB1_5659_backend_set.name
        }
       condition = "any(http.request.url.path sw (i '/dwShell/${var.campusName.one}_PROD'), http.request.url.path sw (i '/ScribeUI/${var.campusName.one}_PROD'))"
        name = "Scribe_${var.campusName.one}"
    }
    rules {
        actions {
            name = "FORWARD_TO_BACKENDSET"
            backend_set_name = oci_load_balancer_backend_set.priLB1_5759_backend_set.name
        }
        condition = "all(http.request.url.path sw (i '/Controller_${var.campusName.one}'))"
        name = "Controller_${var.campusName.one}"
    }
    rules {
        actions {
            name = "FORWARD_TO_BACKENDSET"
            backend_set_name = oci_load_balancer_backend_set.priLB1_5859_backend_set.name
        }
        condition = "all(http.request.url.path sw (i '/TransitUI_${var.campusName.one}'))"
        name = "TransitUI_${var.campusName.one}"
    }
    rules {
        actions {
            name = "FORWARD_TO_BACKENDSET"
            backend_set_name = oci_load_balancer_backend_set.priLB1_5959_backend_set.name
        }
        condition = "all(http.request.url.path sw (i '/Composer_${var.campusName.one}'))"
        name = "Composer_${var.campusName.one}"
    }
    rules {
        actions {
            name = "FORWARD_TO_BACKENDSET"
            backend_set_name = oci_load_balancer_backend_set.priLB1_6059_backend_set.name
        }
        condition = "all(http.request.url.path sw (i '/Dashboard_${var.campusName.one}'))"
        name = "Dashboard_${var.campusName.one}"
    }
    rules {
        actions {
            name = "FORWARD_TO_BACKENDSET"
            backend_set_name = oci_load_balancer_backend_set.priLB1_5570_backend_set.name
        }
        condition = "any(http.request.url.path sw (i '/DashboardServlet/${var.campusName.two}_prod'))"
        name = "DashboardServlet_${var.campusName.two}"
    }
    rules {
        actions {
            name = "FORWARD_TO_BACKENDSET"
            backend_set_name = oci_load_balancer_backend_set.priLB1_5670_backend_set.name
        }
        condition = "any(http.request.url.path sw (i '/dwShell/${var.campusName.two}_PROD'), http.request.url.path sw (i '/ScribeUI/${var.campusName.two}_PROD'))"
        name = "Scribe_${var.campusName.two}"
    }
    rules {
        actions {
            name = "FORWARD_TO_BACKENDSET"
            backend_set_name = oci_load_balancer_backend_set.priLB1_5770_backend_set.name
        }
        condition = "all(http.request.url.path sw (i '/Controller_${var.campusName.two}'))"
        name = "Controller_${var.campusName.two}"
    }
    rules {
        actions {
            name = "FORWARD_TO_BACKENDSET"
            backend_set_name = oci_load_balancer_backend_set.priLB1_5870_backend_set.name
        }
        condition = "all(http.request.url.path sw (i '/TransitUI_${var.campusName.two}'))"
        name = "TransitUI_${var.campusName.two}"
    }
    rules {
        actions {
            name = "FORWARD_TO_BACKENDSET"
            backend_set_name = oci_load_balancer_backend_set.priLB1_5970_backend_set.name
        }
        condition = "all(http.request.url.path sw (i '/Composer_${var.campusName.two}'))"
        name = "Composer_${var.campusName.two}"
    }
    rules {
        actions {
            name = "FORWARD_TO_BACKENDSET"
            backend_set_name = oci_load_balancer_backend_set.priLB1_6070_backend_set.name
        }
        condition = "all(http.request.url.path sw (i '/Dashboard_${var.campusName.two}'))"
        name = "Dashboard_${var.campusName.two}"
    }
}
