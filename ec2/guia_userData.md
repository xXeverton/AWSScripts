# Guia de Configuração da Instância EC2 com Script Externo

## Resumo das Etapas

### 1️⃣ Baixar o Script de Configuração
```bash
wget https://github.com/xXeverton/AWSScripts/raw/main/ec2/setup.sh -O /tmp/setup.sh
```
- Faz o download do script `setup.sh` do repositório no GitHub e salva no diretório temporário `/tmp/setup.sh`.

### 2️⃣ Conceder Permissão de Execução
```bash
chmod +x /tmp/setup.sh
```
- Altera as permissões do arquivo para permitir sua execução.

### 3️⃣ Executar o Script Baixado
```bash
bash /tmp/setup.sh
```
- Executa o script baixado, que pode conter outras configurações e instalações necessárias.

---
## 🚀 Conclusão
Este script simplifica a configuração da instância EC2 ao baixar e executar um script externo de configuração hospedado no GitHub, garantindo que todas as configurações sejam aplicadas corretamente.
