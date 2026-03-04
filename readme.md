<p align="center" width="100%">
    <img width="50%" src="https://github.com/buildrun-tech/buildrun-infra-terraform-pipeline/blob/main/images/thumbnail.png"> 
</p>


<h3 align="center">
  Pipeline de Infraestrutura (AWS + Terraform + Github Actions + Multi Env)
</h3>

<p align="center">

  <img alt="License: MIT" src="https://img.shields.io/badge/license-MIT-%2304D361">
  <img alt="Version: 1.0" src="https://img.shields.io/badge/version-1.0-yellowgreen">

</p>

## Fluxo da Pipeline

<p align="center" width="100%">
    <img width="100%" src="https://github.com/buildrun-tech/buildrun-infra-terraform-pipeline/blob/main/images/fluxo.png"> 
</p>

<p align="center" width="100%">
    <img width="100%" src="https://github.com/buildrun-tech/buildrun-infra-terraform-pipeline/blob/main/images/fluxo-detail.png"> 
</p>

## Como começar?
- Crie o Identity Provider do Github em sua conta AWS
- Crie uma IAM Role em sua conta AWS (Permissão mínimia de S3 e DynamoDB)
- Crie um Bucket S3 em sua conta AWS (Habilite o Bucket Versioning)
- Crie uma tabela no DynamoDB na sua conta AWS (PartitionKey com o nome "LockID")
- Clone esse repositório
- Configure os arquivos workflow 
- Pronto! Você já está habilitado para implantar infras na AWS com Terraform via pipeline

Developed by Build & Run

### Referências

- [How to connect Github Actions to AWS](https://aws.amazon.com/blogs/security/use-iam-roles-to-connect-github-actions-to-actions-in-aws/)