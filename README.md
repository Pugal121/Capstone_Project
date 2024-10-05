Capstone Project
================

Application Deployment
(Deploy the given React application to a production-ready state)

Application:
Clone the below-mentioned repo and deploy the application. (Run the application in port 80 [HTTP])
Repo URL: https://github.com/sriram-R-krishnan/devops-build

Docker:

Dockerize the application by creating a Dockerfile
Create a docker-compose file to use the above image
Bash Scripting:
Write 2 scripts:

build.sh – for building docker images
deploy.sh – for deploying the image to the server
Version Control:

Push the code to GitHub to the dev branch (use .dockerignore & .gitignore files)
Note: Use only CLI for related Git commands
Docker Hub:

Create 2 repos “dev” and “prod” to push images
“Prod” repo must be private and “dev” repo can be public
Jenkins:

Install and configure Jenkins build step as per needs to build, push & deploy the application
Connect Jenkins to the GitHub repo with auto-build trigger from both dev & master branches
If code is pushed to the dev branch, Docker image must be built and pushed to the dev repo in Docker Hub
If dev merged to master, then Docker image must be pushed to the prod repo in Docker Hub
AWS:

Launch a t2.micro instance and deploy the created application
Configure Security Group (SG) as below:
Whoever has the IP address can access the application
Login to the server can only be made from your IP address
Monitoring:

Setup a monitoring system to check the health status of the application (open-source)
Sending notifications only if the application goes down is highly appreciable
Submission:
GitHub repo URL, deployed site URL, and Docker images’ names must be added in the submission.

Upload the screenshots of below mentioned to the GitHub repo:
Jenkins (login page, configuration settings, execute step commands)
AWS (EC2 Console, SG configs)
Docker Hub repo with image tags
Deployed site page
Monitoring health check status
