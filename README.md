# 🚀 Terraform Kubernetes Cluster Repository

This repository contains Terraform code to provision a **Kubernetes cluster** with a single node. It leverages **modular Terraform architecture** for better maintainability and reusability.

## 📂 Repository Structure

```
.
├── MAIN.tf                   # 📝 Main Terraform configuration
├── README.md                 # 📖 This file
├── modules                   # 🧩 Reusable Terraform modules
│   ├── ebs-csi-storageclass  # 💾 Module for EBS CSI StorageClass
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   ├── provider.tf
│   │   └── variables.tf
│   └── network               # 🌐 Module for networking
│       ├── main.tf
│       ├── outputs.tf
│       └── variables.tf
├── outputs.tf                # 📤 Terraform outputs
├── providers.tf              # 🔌 Terraform providers configuration
├── terraform.tfvars          # ⚙️ Variables values
├── tfplan                    # 📊 Saved Terraform plan
└── variables.tf              # 🧮 Variables definitions
```

## 🧩 Modules

* **ebs-csi-storageclass** 💾: Configures the **EBS CSI driver** and storage class for dynamic provisioning of persistent volumes in Kubernetes.
* **network** 🌐: Sets up the **network resources** required for the Kubernetes cluster (VPC, subnets, security groups, etc.).

## ⚡ Usage

1. **Initialize Terraform**

   ```bash
   terraform init
   ```

2. **Preview the Terraform plan**

   ```bash
   terraform plan
   ```

3. **Apply the configuration**

   ```bash
   terraform apply
   ```

4. **Destroy the infrastructure** (if needed)

   ```bash
   terraform destroy
   ```

## 🛠 Variables

All configurable variables are defined in `variables.tf` and can be overridden in `terraform.tfvars`.

Example:

```hcl
cluster_name = "owner-cluster"  # 🏷 Cluster name
region       = "ap-south-1"       # 🌍 AWS region
node_type    = "t3.medium"       # 💻 Node instance type
```

## 📤 Outputs

Terraform outputs are defined in `outputs.tf`. Typical outputs include:

* 🌐 Kubernetes cluster endpoint
* 💻 Node instance details
* 💾 EBS CSI storage class information

## ✅ Requirements

* Terraform >= 1.5
* AWS CLI configured with appropriate credentials
* Access to create AWS resources (VPC, EC2, IAM, EBS, etc.)

## 📝 Notes

* This repository is designed for a **single-node Kubernetes cluster**.
* Modular structure allows easy extension for **multi-node clusters** or additional components.
