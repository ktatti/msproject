#!/usr/bin/env bash

set -eoux pipefail

sudo yum update -y
sudo yum install -y httpd

cat <<EOF > /var/www/html/index.html
<html>
<TITLE>$(hostname)</TITLE>
<head>
<body style="background-color:LightGray;font-family: Helvetica, sans-serif;">
<center><b><h1>UNIVERSITY OF HERTFORDSHIRE </h1>
<h1>School of Computer Science </h1></b>
</center><br>
<center><b><h2>MSc Advanced Computer Science </h2>
<h2>with Sandwich Placement </h2></b></br>
<center><b><h2>7COM1039- Advanced Computer Science Masters Project</h2></b></center> 
<center><b><h2>Final Project Report</h2></b></center>
<center><b><h3>03/09/2021</h3></b></center>
<center><b><h2>Provisioning AWS Infrastructure as 'Infrastructure as Code' using Terraform</h2></b></center>
<p class=MsoNormal><o:p>&nbsp;</o:p></p>
<p class=MsoNormal>Name: <span class=SpellE>Komali</span> <span class=SpellE>Thatti</span><o:p></o:p></p>
<p class=MsoNormal>Student ID: 18056754<o:p></o:p></p>
<p class=MsoNormal>Supervisor: Miss Maryjane Bertrand<o:p></o:p></p>
<p class=MsoNormal><o:p>&nbsp;</o:p></p>
</body>
</html>
EOF

sudo service httpd start
