# AWS Scripts Repository

Bem-vindo ao repositório **AWS Scripts**! Aqui você encontrará diversos scripts para auxiliar na automação e gerenciamento de serviços na Amazon Web Services (AWS).

## ✨ Objetivo

Este repositório tem como objetivo armazenar e compartilhar scripts que facilitam tarefas relacionadas à infraestrutura na AWS, como:

- Gerenciamento de instâncias EC2
- Configuração de S3 buckets
- Automação com AWS Lambda
- Configuração de redes (VPC, Security Groups, Route53)
- Monitoramento com CloudWatch
- E muito mais!

## 🛠 Requisitos

Para executar os scripts deste repositório, é recomendável ter:

- Uma conta AWS ativa
- AWS CLI instalado e configurado (`aws configure`)
- Python 3.x (caso utilize scripts em Python)
- Permissões adequadas para os serviços utilizados

## 📚 Como Usar

1. Clone este repositório:

   ```bash
   git clone https://github.com/seu-usuario/AWSScripts.git
   cd AWSScripts
   ```

2. Configure suas credenciais da AWS:

   ```bash
   aws configure
   ```

3. Execute o script desejado:

   ```bash
   python script-exemplo.py
   ```

## 📚 Estrutura do Repositório

```
/AWSScripts
│-- ec2/
│   ├── ec2-manage.py
│   ├── ec2-backup.sh
│   ├── lambda-deploy.py
│-- README.md
```

- **scripts/**: Pasta contendo todos os scripts organizados por serviço
- **README.md**: Documentação do repositório

## 🚀 Contribuições

Sinta-se à vontade para contribuir enviando pull requests com melhorias e novos scripts!

1. Faça um fork do repositório
2. Crie uma branch com sua feature (`git checkout -b minha-feature`)
3. Commit suas mudanças (`git commit -m 'Adicionando novo script'`)
4. Envie para o repositório (`git push origin minha-feature`)
5. Abra um Pull Request

## 👤 Autor

Desenvolvido por **Everton Pereira Militão**.

## 🛡️ Licença

Este projeto está licenciado sob a **MIT License**.

