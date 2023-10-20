The project directory structure consists of three main components: 00_provider, 01_network, and 02_server. Let's break down each section:
<<<<<<< HEAD
 00_provider
│   ├── env
│   │   ├── main.tf
│   │   ├── output.tf
│   │   ├── provider.tf
│   │   ├── terraform.tfstate
│   │   └── variables.tf
│   └── modules
│       ├── main.tf
│       ├── output.tf
│       └── variables.tf
├── 01_network
│   ├── env
│   │   ├── main.tf
│   │   ├── output.tf
│   │   ├── provider.tf
│   │   └── variables.tf
│   ├── modules
│   │   ├── securitygrp
│   │   │   ├── main.tf
│   │   │   ├── output.tf
│   │   │   └── variables.tf
│   │   ├── subnet
│   │   │   ├── main.tf
│   │   │   ├── output.tf
│   │   │   └── variables.tf
│   │   └── vpc
│   │       ├── main.tf
│   │       ├── output.tf
│   │       └── variables.tf
│   └── readme.md
├── 02_server
│   ├── env
│   │   ├── data.tf
│   │   ├── errored.tfstate
│   │   ├── main.tf
│   │   ├── output.tf
│   │   ├── providers.tf
│   │   └── variables.tf
│   └── modules
│       ├── loadbalancer
│       │   ├── main.tf
│       │   ├── output.tf
│       │   └── variables.tf
│       ├── staticstorage
│       │   ├── main.tf
│       │   ├── output.tf
│       │   └── veriables.tf
│       ├── vmgroup
│       │   ├── main.tf
│       │   ├── output.tf
│       │   └── variables.tf
│       └── vminstance
│           ├── main.tf
│           ├── output.tf
│           └── varibales .tf
├── clean.sh
└── readme.md
The project directory structure consists of three main components: 00_provider, 01_network, and 02_server. Let's break down each section:


Overview:
This project aims to implement a scalable and highly available web hosting solution using cloud resources. The infrastructure will be hosted on Google Cloud Platform (GCP) and will include cloud storage for static content, two cloud instances with Nginx and Apache web servers, and a load balancer to distribute incoming traffic efficiently.

Components:

Cloud Storage for Static Content:

Utilize Google Cloud Storage to store static website content such as HTML, CSS, JavaScript, and media files.
Set up a bucket to store and serve the static assets.
Virtual Machines Instances:

=======


Overview:
This project aims to implement a scalable and highly available web hosting solution using cloud resources. The infrastructure will be hosted on Google Cloud Platform (GCP) and will include cloud storage for static content, two cloud instances with Nginx and Apache web servers, and a load balancer to distribute incoming traffic efficiently.

Components:

Cloud Storage for Static Content:

Utilize Google Cloud Storage to store static website content such as HTML, CSS, JavaScript, and media files.
Set up a bucket to store and serve the static assets.
Virtual Machines Instances:

>>>>>>> 9c908c7402713e1bb03d6d1732dc65e7c0d41ecb
Deploy two virtual machine instances on GCP, each running a different web server:
Instance 1: Nginx server
Instance 2: Apache server

Load Balancer:
Implement a load balancer using GCP's Load Balancing service to distribute incoming traffic across the Nginx and Apache instances.
Configure health checks to monitor the health of the instances and automatically adjust traffic distribution.

Instance Template:

An instance template in Google Cloud Platform (GCP) serves as a blueprint for creating virtual machine instances.
It defines the machine type, image, and other instance properties. In our project, we'll create an instance template for both the Nginx and Apache instances.
Instance Group:

Instance group 
 Instance group is a managed instance group in GCP that allows for easy deployment and scaling of identical instances. We'll create separate instance groups for Nginx and Apache instances
00_provider:
This section contains infrastructure configurations related to the cloud provider. Inside the env directory, you find Terraform configuration files (main.tf, output.tf, provider.tf, variables.tf). The modules directory holds additional configuration files (main.tf, output.tf, variables.tf) related to provider-specific modules.

01_network:
The 01_network section is dedicated to networking configurations. Within the env directory, Terraform files are organized similarly to the provider section. The modules directory includes subdirectories for different networking components (securitygrp, subnet, vpc), each containing Terraform configuration files. Additionally, there is a readme.md file providing information about this section.

02_server:
This section focuses on server configurations. The env directory includes Terraform files, with an additional file (data.tf). The modules directory contains subdirectories for server components (loadbalancer, staticstorage, vmgroup, vminstance), each with its own Terraform configuration files. Note a typo in the staticstorage directory (veriables.tf instead of variables.tf), and a similar typo in the vminstance directory (varibales.tf instead of variables.tf).

Additional Files:
clean.sh: A shell script, likely used for cleaning or resetting the project state.
readme.md: A project-wide readme file that could contain general information, instructions, and an overview of the entire project.
<<<<<<< HEAD

The directory structure follows a modular approach, organizing Terraform configurations based on their functionality. Be mindful of the mentioned typos in the staticstorage and vminstance directories that should be corrected for accurate execution.


=======
>>>>>>> 9c908c7402713e1bb03d6d1732dc65e7c0d41ecb

The directory structure follows a modular approach, organizing Terraform configurations based on their functionality. Be mindful of the mentioned typos in the staticstorage and vminstance directories that should be corrected for accurate execution.

