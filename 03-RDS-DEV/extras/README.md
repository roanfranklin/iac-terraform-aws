Consegui levantar um banco de dados no LocalStack com o comando!

Estamos criando um RDS com:
- Nome: db1
- Engine: PostgreSQL
- Database: test
- Usuario: test
- Senha: test
  
```bash
awslocal rds create-db-instance --db-instance-identifier db1 --db-instance-class c1 --engine postgres
awslocal secretsmanager create-secret --name dbpass --secret-string test
```


Para deletar/destruir o RDS execute:
```bash
awslocal rds delete-db-instance --db-instance-identifier db1
```

Para deletar/destruir o Secret Manager execute:
```bash
awslocal secretsmanager delete-secret --secret-id dbpass --force-delete-without-recovery
```
---

Exemplo 2 usando o MySQL:

Estamos criando um RDS com:
- Nome: db1
- Engine: MySQL
- Database: test
- Usuario: test
- Senha: test

```bash
awslocal rds create-db-instance --db-instance-identifier db1 --db-instance-class c1 --engine mysql
awslocal secretsmanager create-secret --name dbpass --secret-string test
```

---

awslocal rds create-db-instance \
    --db-instance-identifier db1 \
    --db-instance-class c1 \
    --engine mysql \
    --vpc-security-group-ids sg-cf757bd6b3438fe7d \
    --master-username masterawsuser \
    --master-user-password masteruserpassword

---

Pega a saída dos comandos acima e monta esse para executar um SELECT:

```bash
awslocal rds-data execute-statement --database test --resource-arn arn:aws:rds:us-east-1:000000000000:db:db1 --secret-arn arn:aws:secretsmanager:us-east-1:000000000000:secret:dbpass-9727f2 --sql 'SELECT 123'
```

---

Listar os RDS levatados com comando:
```bash
awslocal rds describe-db-instances
```

---

```bash
psql -d test -U test -p 4513 -h localhost -W
```

```
Password: <ENTER "test">

psql: error: connection to server at "localhost" (::1), port 4513 failed: Conexão recusada
        Is the server running on that host and accepting TCP/IP connections?
connection to server at "localhost" (127.0.0.1), port 4513 failed: server closed the connection unexpectedly
        This probably means the server terminated abnormally
        before or while processing the request.
```