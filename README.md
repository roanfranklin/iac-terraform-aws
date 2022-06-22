## IaC-Terraform-LocalStack

**EM CONSTRUÇÃO**

**OBS.:** Pode utilizar para um teste de ambiente AWS, mas precisa organizar algumas coisinhas!

---

Exemplo:

```bash
cd 01-S3-State

terraform init
terraform plan --var-file=../env.tfvars
terraform apply --var-file=../env.tfvars
terraform destroy --var-file=../env.tfvars
```

---

**OBS.:** Existe variáveis expostas, mas é somente um repositório de exemplo!