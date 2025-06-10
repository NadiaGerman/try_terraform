🧩 try_terraform

A simple Terraform project created as a hands-on exercise to learn infrastructure-as-code (IaC) concepts. Designed for practicing core Terraform workflows: writing configurations, initializing modules, applying plans, and destroying resources.

🛠️ Features

Defines basic infrastructure (e.g., VPC, EC2, security groups) with Terraform
Organizes code into logical modules
Demonstrates variables, outputs, and remote/backend configuration
Shows typical Terraform workflow: init, plan, apply, and destroy
🔧 Prerequisites

Terraform installed (v1.0+ recommended)
An active provider account (e.g., AWS, Azure, GCP) with proper IAM permissions
CLI credentials configured (like aws configure or relevant env vars)
🚀 Getting Started

Clone the repository
git clone https://github.com/NadiaGerman/try_terraform.git
cd try_terraform
Initialize Terraform
terraform init
Customize variables by editing terraform.tfvars or exporting env vars:
region = "us-east-1"
instance_type = "t3.micro"
Preview infrastructure
terraform plan
Apply changes
terraform apply
Confirm when prompted to provision resources.
Clean up
terraform destroy
Confirm to remove all created infra.
📁 Project Structure

try_terraform/
├── modules/            # Reusable modules (e.g., network, compute)
├── main.tf             # Root configuration
├── variables.tf        # Input variable definitions
├── outputs.tf          # Outputs after apply
├── terraform.tfvars    # Default variable values
├── backend.tf          # (Optional) Remote state configuration
└── README.md           # Project guide
⚙️ Variables

Here are some common variables (defined in variables.tf). Update in terraform.tfvars:

Variable	Description	Default
region	Cloud provider region	"us-east-1"
vpc_cidr	CIDR block for VPC	"10.0.0.0/16"
public_subnets	Subnet CIDRs for public zones	["10.0.1.0/24"]
instance_type	EC2 or VM instance type	"t3.micro"
🧱 Modules

modules/network – defines VPC, subnets, and related networking components
modules/compute – creates compute instances (e.g., EC2, Azure VMs)
(Add/remove modules as your project evolves)
🎯 Outputs

After terraform apply, useful outputs will be displayed:

public_ip = "3.22.45.100"
instance_id = "i-0abc1234def5678"
👷‍♀️ Terraform Workflow

terraform init — set up provider plugins and backend
terraform fmt — format HCL code
terraform validate — check syntax and config correctness
terraform plan — preview actions
terraform apply — create/update resources
terraform destroy — tear down everything
💡 Tips & Best Practices

Use .gitignore to exclude sensitive files and state
.terraform/
*.tfstate*
Enable remote state backends (e.g., S3, Azure Storage, GCP bucket) for team use
Always review terraform plan before applying
Version your modules and provider plugins with required_providers or versions.tf file
📚 Further Learning

Terraform docs — official guides
HashiCorp Learn — hands-on tutorials
Best practices: modules structure, state management, CI/CD pipelines
📝 License

This project is licensed under the MIT License. Feel free to use, modify, and share it!

🙋 Contributing

Contributions, suggestions, and feedback are welcome! Just create an issue or submit a pull request.

