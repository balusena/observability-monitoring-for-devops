# Development environment setup and apply file
dev:
	@rm -rf .terraform
	@git pull
	@terraform init -backend-config=env-dev/state.tfvars
	@terraform apply -auto-approve -var-file=env-dev/main.tfvars

# Development environment destroy file
dev-destroy:
	@rm -rf .terraform
	@git pull
	@terraform init -backend-config=env-dev/state.tfvars
	@terraform destroy -auto-approve -var-file=env-dev/main.tfvars

# Production environment setup and apply file
prod:
	@rm -rf .terraform
	@git pull
	@terraform init -backend-config=env-prod/state.tfvars
	@terraform apply -auto-approve -var-file=env-prod/main.tfvars

# Production environment destroy file
prod-destroy:
	@rm -rf .terraform
	@git pull
	@terraform init -backend-config=env-prod/state.tfvars
	@terraform destroy -auto-approve -var-file=env-prod/main.tfvars