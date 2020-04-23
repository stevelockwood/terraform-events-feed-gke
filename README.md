# terrafom-events-feed-gke

## To run:

You need to have your own docker images, one for the 
external service and one for the internal

Open Google Cloud Shell and clone this repository.

Open terraform.tfvars file and change project_id variable to your project ID
and verify the docker image names are as needed
If you comment out any of those lines you will be prompted for the variable
values when applying the template.

## Then run: 
terraform init

terraform plan

terraform apply -auto-approve

## The followng will be created:
GKE Cluster
Kubernetes namespace
Kubernetes deployment for internal service
Kubernetes deployment for external service
Kubernetes load balancer for external
ClusterIP for internal

The public IP of the load balancer will be in the outputt when done

## To delete everything run:
terraform destroy -auto-approve

