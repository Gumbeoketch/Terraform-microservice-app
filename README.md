# take-home-PT1
## INSTALL AWS CLI
Follow the instructions to install AWS CLI:
https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html

## AUTHENTICATE TO CLI USING IAM USER WITH TERRAFORM PERMISSION
Configure your AWS CLI with credentials:
aws configure

## INSTALL TERRAFORM
**Configure your AWS CLI with credentials:**
https://developer.hashicorp.com/terraform/install

## APPLY TERRAFORM FILES
**Run the following Terraform commands to set up the infrastructure:**
terraform init
terraform validate
terraform validate
terraform plan
terraform apply

## ACTIVATE ECR ON CONSOLE AND BUILD PUSH IMAGE
**Authenticate Docker with AWS ECR:**
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin <aws_account_id>.dkr.ecr.us-east-1.amazonaws.com

**Build and push your Docker image:**

docker build -t my-app .
docker tag my-app:latest <aws_account_id>.dkr.ecr.us-east-1.amazonaws.com/my-app:latest
docker push <aws_account_id>.dkr.ecr.us-east-1.amazonaws.com/my-app:latest


## DEPLOY THE APP
**Use kubectl to deploy the application using Kubernetes manifests:**
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml

## SECURITY SCANS
**Checkov is a security tool that prevents cloud misconfigurations and find vulnerabilities during build-time in infrastructure as code, container images and open source packages with Checkov**
Run the script in the current directory
./checov_scan.sh
trivy scan has been embedded in the Docker file. You can include exit code 1 for severity for example: RUN trivy filesystem --severity CRITICAL --exit-code 1 --no-progress /
