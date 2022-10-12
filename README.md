# Terraform ECS Cluster (Fargate)

## Environment/Workspace

1. List of environments

    1.1 `dev`

2. Create/Select Terraform Workspaces:
   2.1. Create workspace for first time for a specific environment and aws-region OR switch to one exists

    ```bash
    # New  (name could be anything e.g. us-east-1-dev, us-east-2-stage etc)
    terraform workspace new <workspace-name>

    # OR if existing
    terraform workspace select <workspace-name>
    ```

3. Setup ECS Cluster:

   ```bash
   terraform init
   terrraform plan
   terraform apply
   ```
