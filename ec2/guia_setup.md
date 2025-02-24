# Guia de Configuração da Instância EC2 com Apache e Git

## Resumo das Etapas

### 1️⃣ Habilitar Log de Execução
```bash
exec > /var/log/user-data.log 2>&1
```
- Redireciona a saída e os erros do script para um arquivo de log para facilitar a depuração.

### 2️⃣ Atualizar os Pacotes
```bash
sudo yum update -y
```
- Atualiza todos os pacotes do sistema automaticamente.

### 3️⃣ Instalar Apache (httpd) e Git
```bash
sudo yum install -y httpd git
```
- Instala o Apache (servidor web) e o Git (necessário para clonar o repositório do site).

### 4️⃣ Iniciar e Habilitar o Apache
```bash
sudo systemctl start httpd
sudo systemctl enable httpd
```
- Inicia o serviço Apache e configura para iniciar automaticamente após o reboot.

### 5️⃣ Definir Diretório Web
```bash
WEB_DIR="/var/www/html"
```
- Define o diretório onde os arquivos do site serão armazenados.

### 6️⃣ Remover Arquivos Padrões
```bash
sudo rm -rf $WEB_DIR/*
```
- Remove qualquer conteúdo pré-existente no diretório web para evitar conflitos.

### 7️⃣ Clonar o Repositório do Site
```bash
sudo git clone https://github.com/exemplo/meu-site.git $WEB_DIR
```
- Clona o site hospedado no GitHub para o diretório do Apache.

### 8️⃣ Ajustar Permissões do Diretório
```bash
sudo chmod -R 755 $WEB_DIR
sudo chown -R apache:apache $WEB_DIR
```
- Ajusta permissões para garantir que o Apache possa acessar e servir os arquivos corretamente.

### 9️⃣ Testar Servidor Apache
```bash
curl -I http://localhost
```
- Verifica se o Apache está rodando corretamente ao retornar um cabeçalho HTTP `200 OK`.

### 🔟 Enviar Solicitação POST
```bash
curl -X POST -d "nome=Everton Pereira" https://difusaotech.com.br/lab/aws/index.php
```
- Envia uma requisição para confirmar a execução correta do script.

### 1️⃣1️⃣ Finalizar o Script
```bash
echo "Finalizado com sucesso!"
```
- Exibe uma mensagem indicando a conclusão do processo.

---
## 🚀 Conclusão
Este script automatiza a configuração de uma instância EC2 para servir um site via Apache, garantindo que o servidor esteja ativo, atualizado e configurado corretamente.
