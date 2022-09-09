##
###
#This will be moved into Ansible but wanted to save for future refrance
###
##

sudo semanage port -a -t http_port_t  -p tcp 5559
sudo semanage port -a -t http_port_t  -p tcp 5659
sudo semanage port -a -t http_port_t  -p tcp 5759
sudo semanage port -a -t http_port_t  -p tcp 5859
sudo semanage port -a -t http_port_t  -p tcp 5959
sudo semanage port -a -t http_port_t  -p tcp 6059

sudo firewall-cmd --permanent --zone=public --add-port=5559/tcp
sudo firewall-cmd --permanent --zone=public --add-port=5659/tcp
sudo firewall-cmd --permanent --zone=public --add-port=5759/tcp
sudo firewall-cmd --permanent --zone=public --add-port=5859/tcp
sudo firewall-cmd --permanent --zone=public --add-port=5959/tcp
sudo firewall-cmd --permanent --zone=public --add-port=6059/tcp
sudo firewall-cmd --reload

echo "Server Index" > /usr/share/nginx/index.html
mkdir -p /usr/share/nginx/DashboardServlet/campus1_PROD
echo "campus1 Dashboard Servlet" > /usr/share/nginx/DashboardServlet/campus1_PROD/index.html
mkdir -p /usr/share/nginx/5659/dwShell/campus1_PROD
mkdir -p /usr/share/nginx/5659/ScribeUI/campus1_PROD
echo "campus1 dwShellScribe" > /usr/share/nginx/5659/dwShell/campus1_PROD/index.html
echo "campus1 ScribeUI" > /usr/share/nginx/5659/ScribeUI/campus1_PROD/index.html
mkdir -p /usr/share/nginx/Controller_campus1
echo "campus1 Controler" > /usr/share/nginx/Controller_campus1/index.html
mkdir -p /usr/share/nginx/TransitUI_campus1
echo "campus1 Transit UI" > /usr/share/nginx/TransitUI_campus1/index.html
mkdir -p /usr/share/nginx/Composer_campus1
echo "campus1 Composer" > /usr/share/nginx/Composer_campus1/index.html
mkdir -p /usr/share/nginx/Dashboard_campus1
echo "campus1 Dashboard" > /usr/share/nginx/Dashboard_campus1/index.html


sudo semanage port -a -t http_port_t  -p tcp 5570
sudo semanage port -a -t http_port_t  -p tcp 5670
sudo semanage port -a -t http_port_t  -p tcp 5770
sudo semanage port -a -t http_port_t  -p tcp 5870
sudo semanage port -a -t http_port_t  -p tcp 5970
sudo semanage port -a -t http_port_t  -p tcp 6070

sudo firewall-cmd --permanent --zone=public --add-port=5570/tcp
sudo firewall-cmd --permanent --zone=public --add-port=5670/tcp
sudo firewall-cmd --permanent --zone=public --add-port=5770/tcp
sudo firewall-cmd --permanent --zone=public --add-port=5870/tcp
sudo firewall-cmd --permanent --zone=public --add-port=5970/tcp
sudo firewall-cmd --permanent --zone=public --add-port=6070/tcp
sudo firewall-cmd --reload

mkdir -p /usr/share/nginx/DashboardServlet/campus2_PROD
echo "campus2 Dashboard Servlet" > /usr/share/nginx/DashboardServlet/campus2_PROD/index.html
mkdir -p /usr/share/nginx/5670/dwShell/campus2_PROD
mkdir -p /usr/share/nginx/5670/ScribeUI/campus2_PROD
echo "campus2 dwShellScribe" > /usr/share/nginx/5670/dwShell/campus2_PROD/index.html
echo "campus2 ScribeUI" > /usr/share/nginx/5670/ScribeUI/campus2_PROD/index.html
mkdir -p /usr/share/nginx/Controller_campus2
echo "campus2 Controler" > /usr/share/nginx/Controller_campus2/index.html
mkdir -p /usr/share/nginx/TransitUI_campus2
echo "campus2 Transit UI" > /usr/share/nginx/TransitUI_campus2/index.html
mkdir -p /usr/share/nginx/Composer_campus2
echo "campus2 Composer" > /usr/share/nginx/Composer_campus2/index.html
mkdir -p /usr/share/nginx/Dashboard_campus2
echo "campus2 Dashboard" > /usr/share/nginx/Dashboard_campus2/index.html


sudo semanage port -a -t http_port_t  -p tcp 5550
sudo semanage port -a -t http_port_t  -p tcp 5650
sudo semanage port -a -t http_port_t  -p tcp 5750
sudo semanage port -a -t http_port_t  -p tcp 5850
sudo semanage port -a -t http_port_t  -p tcp 5950
sudo semanage port -a -t http_port_t  -p tcp 6050

sudo firewall-cmd --permanent --zone=public --add-port=5550/tcp
sudo firewall-cmd --permanent --zone=public --add-port=5650/tcp
sudo firewall-cmd --permanent --zone=public --add-port=5750/tcp
sudo firewall-cmd --permanent --zone=public --add-port=5850/tcp
sudo firewall-cmd --permanent --zone=public --add-port=5950/tcp
sudo firewall-cmd --permanent --zone=public --add-port=6050/tcp
sudo firewall-cmd --reload

mkdir -p /usr/share/nginx/DashboardServlet/campus3_PROD
echo "campus3 Dashboard Servlet" > /usr/share/nginx/DashboardServlet/campus3_PROD/index.html
mkdir -p /usr/share/nginx/5650/dwShell/campus3_PROD
mkdir -p /usr/share/nginx/5650/ScribeUI/campus3_PROD
echo "campus3 dwShellScribe" > /usr/share/nginx/5650/dwShell/campus3_PROD/index.html
echo "campus3 ScribeUI" > /usr/share/nginx/5650/ScribeUI/campus3_PROD/index.html
mkdir -p /usr/share/nginx/Controller_campus3
echo "campus3 Controler" > /usr/share/nginx/Controller_campus3/index.html
mkdir -p /usr/share/nginx/TransitUI_campus3
echo "campus3 Transit UI" > /usr/share/nginx/TransitUI_campus3/index.html
mkdir -p /usr/share/nginx/Composer_campus3
echo "campus3 Composer" > /usr/share/nginx/Composer_campus3/index.html
mkdir -p /usr/share/nginx/Dashboard_campus3
echo "campus3 Dashboard" > /usr/share/nginx/Dashboard_campus3/index.html

sudo semanage port -a -t http_port_t  -p tcp 5590
sudo semanage port -a -t http_port_t  -p tcp 5690
sudo semanage port -a -t http_port_t  -p tcp 5790
sudo semanage port -a -t http_port_t  -p tcp 5890
sudo semanage port -a -t http_port_t  -p tcp 5990
sudo semanage port -a -t http_port_t  -p tcp 6090

sudo firewall-cmd --permanent --zone=public --add-port=5590/tcp
sudo firewall-cmd --permanent --zone=public --add-port=5690/tcp
sudo firewall-cmd --permanent --zone=public --add-port=5790/tcp
sudo firewall-cmd --permanent --zone=public --add-port=5890/tcp
sudo firewall-cmd --permanent --zone=public --add-port=5990/tcp
sudo firewall-cmd --permanent --zone=public --add-port=6090/tcp
sudo firewall-cmd --reload

mkdir -p /usr/share/nginx/DashboardServlet/campus4_PROD
echo "campus4 Dashboard Servlet" > /usr/share/nginx/DashboardServlet/campus4_PROD/index.html
mkdir -p /usr/share/nginx/5690/dwShell/campus4_PROD
mkdir -p /usr/share/nginx/5690/ScribeUI/campus4_PROD
echo "campus4 dwShellScribe" > /usr/share/nginx/5690/dwShell/campus4_PROD/index.html
echo "campus4 ScribeUI" > /usr/share/nginx/5690/ScribeUI/campus4_PROD/index.html
mkdir -p /usr/share/nginx/Controller_campus4
echo "campus4 Controler" > /usr/share/nginx/Controller_campus4/index.html
mkdir -p /usr/share/nginx/TransitUI_campus4
echo "campus4 Transit UI" > /usr/share/nginx/TransitUI_campus4/index.html
mkdir -p /usr/share/nginx/Composer_campus4
echo "campus4 Composer" > /usr/share/nginx/Composer_campus4/index.html
mkdir -p /usr/share/nginx/Dashboard_campus4
echo "campus4 Dashboard" > /usr/share/nginx/Dashboard_campus4/index.html

<html>
<body>
    <H1>Bozman</H1>
    <ul>
        <li><a href="https://degreeworks.nosquabble.com/DashboardServlet/campus1_PROD/" target="_blank"> https://degreeworks.nosquabble.com/DashboardServlet/campus1_PROD/</a></li>
        <li><a href="https://degreeworks.nosquabble.com/dwShell/campus1_PROD/" target="_blank">https://degreeworks.nosquabble.com/dwShell/campus1_PROD/</a></li>
        <li><a href="https://degreeworks.nosquabble.com/Controller_campus1/" target="_blank">https://degreeworks.nosquabble.com/Controller_campus1/</a></li>
        <li><a href="https://degreeworks.nosquabble.com/ScribeUI/campus1_PROD/" target="_blank">https://degreeworks.nosquabble.com/ScribeUI/campus1_PROD/</a></li>
        <li><a href="https://degreeworks.nosquabble.com/TransitUI_campus1/" target="_blank">https://degreeworks.nosquabble.com/TransitUI_campus1/</a></li>
        <li><a href="https://degreeworks.nosquabble.com/Composer_campus1/" target="_blank">https://degreeworks.nosquabble.com/Composer_campus1/</a></li>
        <li><a href="https://degreeworks.nosquabble.com/Dashboard_campus1/" target="_blank">https://degreeworks.nosquabble.com/Dashboard_campus1/</a></li>
    </ul>
    <H1>Billings</H1>
    <ul>
        <li><a href="https://degreeworks.nosquabble.com/DashboardServlet/campus2_PROD/" target="_blank"> https://degreeworks.nosquabble.com/DashboardServlet/campus2_PROD/</a></li>
        <li><a href="https://degreeworks.nosquabble.com/dwShell/campus2_PROD/" target="_blank">https://degreeworks.nosquabble.com/dwShell/campus2_PROD/</a></li>
        <li><a href="https://degreeworks.nosquabble.com/Controller_campus2/" target="_blank">https://degreeworks.nosquabble.com/Controller_campus2/</a></li>
        <li><a href="https://degreeworks.nosquabble.com/ScribeUI/campus2_PROD/" target="_blank">https://degreeworks.nosquabble.com/ScribeUI/campus2_PROD/</a></li>
        <li><a href="https://degreeworks.nosquabble.com/TransitUI_campus2/" target="_blank">https://degreeworks.nosquabble.com/TransitUI_campus2/</a></li>
        <li><a href="https://degreeworks.nosquabble.com/Composer_campus2/" target="_blank">https://degreeworks.nosquabble.com/Composer_campus2/</a></li>
        <li><a href="https://degreeworks.nosquabble.com/Dashboard_campus2/" target="_blank">https://degreeworks.nosquabble.com/Dashboard_campus2/</a></li>
    </ul>
    <H1>Bozman</H1>
    <ul>
        <li><a href="https://degreeworks.nosquabble.com/DashboardServlet/campus3_PROD/" target="_blank"> https://degreeworks.nosquabble.com/DashboardServlet/campus3_PROD/</a></li>
        <li><a href="https://degreeworks.nosquabble.com/dwShell/campus3_PROD/" target="_blank">https://degreeworks.nosquabble.com/dwShell/campus3_PROD/</a></li>
        <li><a href="https://degreeworks.nosquabble.com/Controller_campus3/" target="_blank">https://degreeworks.nosquabble.com/Controller_campus3/</a></li>
        <li><a href="https://degreeworks.nosquabble.com/ScribeUI/campus3_PROD/" target="_blank">https://degreeworks.nosquabble.com/ScribeUI/campus3_PROD/</a></li>
        <li><a href="https://degreeworks.nosquabble.com/TransitUI_campus3/" target="_blank">https://degreeworks.nosquabble.com/TransitUI_campus3/</a></li>
        <li><a href="https://degreeworks.nosquabble.com/Composer_campus3/" target="_blank">https://degreeworks.nosquabble.com/Composer_campus3/</a></li>
        <li><a href="https://degreeworks.nosquabble.com/Dashboard_campus3/" target="_blank">https://degreeworks.nosquabble.com/Dashboard_campus3/</a></li>
    </ul>
    <H1>Billings</H1>
    <ul>
        <li><a href="https://degreeworks.nosquabble.com/DashboardServlet/campus4_PROD/" target="_blank"> https://degreeworks.nosquabble.com/DashboardServlet/campus4_PROD/</a></li>
        <li><a href="https://degreeworks.nosquabble.com/dwShell/campus4_PROD/" target="_blank">https://degreeworks.nosquabble.com/dwShell/campus4_PROD/</a></li>
        <li><a href="https://degreeworks.nosquabble.com/Controller_campus4/" target="_blank">https://degreeworks.nosquabble.com/Controller_campus4/</a></li>
        <li><a href="https://degreeworks.nosquabble.com/ScribeUI/campus4_PROD/" target="_blank">https://degreeworks.nosquabble.com/ScribeUI/campus4_PROD/</a></li>
        <li><a href="https://degreeworks.nosquabble.com/TransitUI_campus4/" target="_blank">https://degreeworks.nosquabble.com/TransitUI_campus4/</a></li>
        <li><a href="https://degreeworks.nosquabble.com/Composer_campus4/" target="_blank">https://degreeworks.nosquabble.com/Composer_campus4/</a></li>
        <li><a href="https://degreeworks.nosquabble.com/Dashboard_campus4/" target="_blank">https://degreeworks.nosquabble.com/Dashboard_campus4/</a></li>
    </ul>
</body>


<pre>
<?php

foreach (getallheaders() as $name => $value) {
    echo "$name: $value\n";
}

?></pre>


</html>


http://129.146.92.56/TransitUI_campus4/

http://129.146.92.56/Dashboard_campus4/
 


greate falls

