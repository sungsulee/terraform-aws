# WordPress on AWS with Terraform (RHEL 9)

This package deploys a simple 3-tier WordPress stack on AWS using Red Hat Enterprise Linux 9:

- 1 web server (Apache + PHP + WordPress)
- 1 database server (MariaDB)
- 1 cache server (Redis)
- Elastic IP for the web server
- Single VPC and public subnet for simplicity

## Files

- `versions.tf`
- `variables.tf`
- `main.tf`
- `outputs.tf`
- `terraform.tfvars.example`
- `userdata/web.sh.tftpl`
- `userdata/db.sh.tftpl`
- `userdata/cache.sh`

## Quick start

```bash
terraform init
cp terraform.tfvars.example terraform.tfvars
terraform plan
terraform apply
```

Then open the `wordpress_url` output in your browser.

