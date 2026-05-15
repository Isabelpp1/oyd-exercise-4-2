# oyd-exercise-4-2 — Migración de Estado Remoto del Servicio de Órdenes

Workspace de Terraform migrado de estado local a backend remoto en S3 con bloqueo mediante DynamoDB.

- **Bucket de estado:** `isabelpp-orders-tfstate`
- **Tabla de bloqueo:** `isabelpp-orders-locks`
- **Llave del estado:** `orders/terraform.tfstate`

## Evidencia

### terraform state list (después de la migración)

```
aws_s3_bucket.order_attachments
```

### aws s3 ls s3://isabelpp-orders-tfstate/orders/

```
2026-05-14 20:04:43       2954 terraform.tfstate
```

### Contención de bloqueo (error en Terminal 2 mientras Terminal 1 seguía ejecutando el apply)

![Error de contención de bloqueo](evidence/lock-contention.png)
