#!/bin/sh

# ${VAR_RDS_ENDPOINT}
# ${VAR_RDS_USERNAME}
# ${VAR_RDS_PASSWORD}
# ${VAR_PORT_SSH}

# Checa se existe o diretório do Apache2.
# Se não existir, instala o apache2, habilita e start. 
if [ ! -d "/etc/apache2" ]; then
    apt install -y apache2

    systemctl enable apache2
    systemctl start apache2

    echo "Estamos em manutenção!" > /var/www/html/index.html
fi

# #################################
# ELB heartbeat.html

echo '<html>
  <head>
    <title>ELB Heartbeat</title>
  </head>
  <body>
    <p>OK</p>
  </body>
</html>' > /var/www/html/heartbeat.html

chown www-data:www-data /var/www/html/heartbeat.html

# #################################
# Modificando a porta do SSH

# sed -i s/"#Port 22"/"Port ${VAR_PORT_SSH}"/g /etc/ssh/sshd_config
# sudo systemctl reload sshd
# # semanage port -a -t ssh_port_t -p tcp ${VAR_PORT_SSH}
# # firewall-cmd --zone=public --add-port=${VAR_PORT_SSH}/tcp --permanent
# # firewall-cmd --reload

# #################################
# 