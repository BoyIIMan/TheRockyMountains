## Terraform Backend Strategy

All labs use a centralized Azure Blob Storage backend.

Each lab defines a unique backend key:
- lab1-zero-trust → full-azure-lab/lab01-zero-trust/terraform.tfstate

### Benefits
- Prevents state conflicts
- Enables independent deployments
- Supports scaling to multiple environments