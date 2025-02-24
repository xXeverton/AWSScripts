#!/bin/bash

# Habilitar log de execução
exec > /var/log/user-data.log 2>&1

echo "Iniciando instalação no Amazon Linux..." 

# Atualizar pacotes
sudo yum update -y

# Instalar Apache (httpd) e Git
sudo yum install -y httpd git

# Iniciar e habilitar o Apache
sudo systemctl start httpd
sudo systemctl enable httpd
echo "Apache instalado e iniciado."

# Definir diretório web
WEB_DIR="/var/www/html"

# Remover arquivos padrões do diretório
sudo rm -rf $WEB_DIR/*

# Clonar o repositório do site
echo "Clonando repositório..."
sudo git clone https://github.com/xXeverton/MeuSiteTarefa.git $WEB_DIR
echo "Repositório clonado."

# Ajustar permissões do diretório
sudo chmod -R 755 $WEB_DIR
sudo chown -R apache:apache $WEB_DIR

# Testar servidor Apache
curl -I http://localhost

# Enviar solicitação POST
echo "Enviando solicitação POST..."
curl -X POST -d "nome=Everton Pereira Militão" https://difusaotech.com.br/lab/aws/index.php

echo "Finalizado com sucesso!"
