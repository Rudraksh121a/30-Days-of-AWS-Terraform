# How Terraform Works & Introduction to Infrastructure as Code (IaC)

Before working with Terraform, it's important to understand why it's needed and what Infrastructure as Code (IaC) means.

## Understanding Infrastructure as Code (IaC)

Manual infrastructure creation is:

- Slow  
- Error-prone  
- Hard to repeat  
- Difficult to scale across environments  

IaC lets you define infrastructure using code, solving these problems.

### Why IaC Is Important

1. **Reusability**: Use the same code for multiple environments.
2. **Consistency**: Every environment gets the same configuration.
3. **No Manual Repetition**: No need to recreate infrastructure each time.

IaC is essential for modern DevOps.

## Challenges With Traditional IaC

Each cloud provider has its own IaC tool:

| Cloud Provider | IaC Tool           |
|----------------|-------------------|
| AWS            | CloudFormation    |
| Azure          | ARM Templates     |
| GCP            | Deployment Manager|

Learning multiple tools is inefficient, especially for multi-cloud.

## What Is Terraform?

Terraform is a multi-cloud IaC tool for:

- AWS  
- Azure  
- GCP  
- Kubernetes  
- GitHub  
- More  

It uses HCL (HashiCorp Configuration Language).

## Key Benefits of Terraform

1. **One Language**: Manage multiple clouds with one configuration language.
2. **Security and Reliability**: State files prevent accidental changes and ensure consistency.
3. **Easy to Use**: Human-readable syntax and simple workflow.
4. **Reusability**: Modules enable reusable infrastructure templates.

## Terraform Workflow

Typical steps:

1. **Write Code**: Create `.tf` files.
2. **Initialize**:  
    ```bash
    terraform init
    ```
    Prepares your working directory and downloads providers.
3. **Validate**:  
    ```bash
    terraform validate
    ```
    Checks configuration for errors.
4. **Plan**:  
    ```bash
    terraform plan
    ```
    Shows proposed changes.
5. **Apply**:  
    ```bash
    terraform apply
    ```
    Provisions or updates infrastructure.
6. **(Optional) Destroy**:  
    ```bash
    terraform destroy
    ```
    Removes all resources.

Install Terraform from [the official website](https://developer.hashicorp.com/terraform/install) and verify with:

```bash
terraform -v
```

## Additional Resources

- [Terraform Documentation](https://developer.hashicorp.com/terraform/docs)
- [Terraform Azure Provider](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs)
- [Infrastructure as Code on Azure](https://learn.microsoft.com/azure/devops/learn/what-is-infrastructure-as-code)

---
