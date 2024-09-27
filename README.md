# Observability and Monitoring for DevOps

![Observability and Monitoring for DevOps](https://github.com/balusena/observability-monitoring-for-devops/blob/main/observability-monitoring.png)

The **AWS DevOps Project** repository is a comprehensive solution aimed at deploying, managing, and monitoring the 
**RoboShop application** within a cloud-native environment. This project features multiple microservices, including 
**frontend, catalogue, user, cart, payment, shipping, and dispatch**, each responsible for critical aspects of the 
application. 

To ensure robust infrastructure management, the repository incorporates various **Terraform modules**, such as 
**tf-module-documentdb, tf-module-elasticache, tf-module-rds, and tf-module-rabbitmq**, enabling the automated setup 
of essential AWS services like **DocumentDB, ElastiCache, RDS**, and **RabbitMQ**. Networking is handled through 
**tf-module-vpc** and **tf-module-alb**, providing secure communication and effective load balancing.

The project also integrates automation tools, including **roboshop-ansible** for OS-level configurations, **roboshop-jenkins**
for continuous integration and delivery, and **roboshop-kubernetes** for orchestrating containerized applications on **AWS EKS**. 

Observability and monitoring are managed through tools like the **ELK Stack (Elasticsearch, Logstash, Kibana)**, **Prometheus**,
**Grafana**, and **New Relic** for application performance monitoring (APM), ensuring real-time logging, metrics, and alerts. 

This repository serves as a full-fledged DevOps pipeline, enabling teams to deploy, monitor, and scale the **RoboShop application**
efficiently, with an emphasis on operational resilience and optimized performance in a cloud environment.


1. **Introduction to Observability and Monitoring**
    - **Introduction to Observability**
       - **Why Monitoring**
       - **why Observability**
    - **Does Observability Cover Monitoring?**
    - **What Can Be Monitored?**
    - **What Can Be Observed?**
    - **Monitoring on Bare-Metal Servers vs. Monitoring Kubernetes**
    - **What are the Tools Available?**

2. **Introduction to Monitoring Tools**
    - **Monitoring Tools Overview**
       - **Prometheus**
          - **Prometheus Architecture**
          - **Prometheus Server**
          - **Service Discovery**
          - **Pushgateway**
          - **Alert Manager**
          - **Exporters**
          - **Prometheus Web UI**
       - **Grafana**
          - **Key features**
       - **API Clients**
       - **Prometheus and Grafana Together**  
       
3. **Prometheus Installation and Setup**
    - **Prometheus**
    - **Key Features**
    - **Prometheus installation and setup in Ubuntu Linux**
       - **Prerequisites**
       - **Prometheus installation steps**
          - **Update System Packages**
          - **Download Prometheus from https://prometheus.io/download/**
          - **Extract the Downloaded Archive**
          - **Move into the Extracted Directory**
          - **Start Prometheus**
          - **Create the systemd Unit File**
          
4. **Grafana Installation and Setup**
    - **Grafana**
    - **Key Features**
    - **Grafana installation and setup in Ubuntu Linux** 
       - **Prerequisites**
       - **Grafana installation steps**  
          - **Add the Grafana repository**
          - **Next,add the Grafana repository to your APT sources**
          - **Update the package index/Refresh your APT cache to update your package lists**
          - **Install Grafana**
          - **Start the Grafana service**
          - **Verify Status, Enable and Start the Grafana service to start on boot**
          - **Grafana Login Credentials** 
          
5. **Introduction to Observability Tools**
    - **Observability Tools Overview**
    
6. **ELK Stack Installation and Setup**
    - **What is the ELK Stack?**
       - **Elasticsearch**
       - **Logstash**
       - **Kibana**
       - **Common Use Cases**
    - **ELK installation and setup in Ubuntu Linux**
       - **Update the System**
       - **Install Java**
          - **Install OpenJDK using the following command**
          - **Verify the installation**
       - **Install Elasticsearch**
          - **Download and install the Elasticsearch public signing key**
          - **Add the Elasticsearch repository to the APT sources list**
          - **Install Elasticsearch**
          - **Enable and start the Elasticsearch service**
          - **Verify that Elasticsearch is running**
       - **Install Logstash**
          - **Install Logstash using APT**   
          - **Start and enable the Logstash service**                      
       - **Install Kibana**
          - **Install Kibana**
          - **Enable and start the Kibana service**
          - **To access Kibana, open your web browser and navigate to**
       - **Configure Elasticsearch and Kibana**
          - **Edit the Elasticsearch configuration file**
          - **Uncomment and modify the following lines**
          - **Restart both services**
       - **Install Beats**
          - **Filebeat**
             - **Install Filebeat**
             - **Enable and configure the Filebeat Elasticsearch module**
             - **Start Filebeat**
       - **Verify Installation**
       - **Access Kibana**
       - **Summary**
       
7. **New Relic Installation and Setup**
    - **New Relic Overview**
    - **Legacy Monitoring vs. New Relic Monitoring**
       - **Legacy Monitoring**
       - **New Relic Monitoring**
    - **New Relic installation and setup in Ubuntu Linux**
       - **Create a New Relic Account**
       - **Install the New Relic Infrastructure Agent**
          - **Add the New Relic APT Repository Open your terminal and run the following commands**   
          - **Update and Install the Agent**
       - **Configure the New Relic Infrastructure Agent**
          - **Open the configuration file**
          - **Add your New Relic license key to the configuration**
       - **Start and Enable the New Relic Infrastructure Agent**
       - **Install Language-Specific Agents**
          - **To Install the New Relic Java Agent. Download the New Relic Java Agent**
          - **2.Unzip the downloaded file**
       - **Verify the Installation** 
       - **Conclusion**  
       
8. **Observability Monitoring AWS DevOps Project**
    - **AWS DevOps Project**
       - **frontend**
       - **catalgoue**
       - **user**
       - **cart**
       - **payment**
       - **shipping**
       - **dispatch**
       - **tf-module-documentdb**
       - **tf-module-elasticache**
       - **tf-module-rds**
       - **tf-module-rabbitmq**
       - **tf-module-vpc**
       - **tf-module-alb**
       - **tf-module-app**
       - **tf-module-eks**
       - **aws-parameter-store**
       - **aws-parameter-init-container**
       - **schema-load-init-container**
       - **roboshop-ansible**
       - **roboshop-terraform**
       - **roboshop-jenkins**
       - **roboshop-kubernetes**         
    - **Observability and Monitoring AWS DevOps Project**
       - **Project Approach Using ELK Stack for Log Collection and Management**
       - **Four Golden Signals from Google's Site Reliability Engineering (SRE)**
          - **Latency**
          - **Traffic**
          - **Errors**
          - **Saturation**
       - **Project Approach Using Prometheus and ELK Integration**
          - **Service Discovery**
       - **Project Approach Using Grafana**
       - **Project Approach Using New Relic**
    - **Conclusion** 
    
## 👥 Who Is This For?

> [!IMPORTANT]
> This collection is perfect for:
>
> - **DevOps Engineers**: Get quick access to the tools you use every day.
> - **Sysadmins**: Simplify operations with easy-to-follow guides.
> - **Developers**: Understand the infrastructure behind your applications.
> - **DevOps Newcomers**: Transform from beginner to expert with in-depth concepts and hands-on projects.

## 🛠️ How to Use This Repository

> [!NOTE]
> 1. **Explore the Categories**: Navigate through the folders to find the tool or technology you’re interested in.
> 2. **Use the Repositories**: Each repository is designed to provide quick access to the most important concepts and projects.

## 🤝 Contributions Welcome!

We believe in the power of community! If you have a tip, command, or configuration that you'd like to share, please contribute to this repository. Whether it’s a new tool or an addition to an existing content, your input is valuable.

## 📢 Stay Updated

This repository is constantly evolving with new tools and updates. Make sure to ⭐ star this repo to keep it on your radar!

## Liking the Project?

# ⭐❤️

If you find this project helpful, please consider giving it a ⭐! It helps others discover the project and keeps me motivated to improve it.

Thank you for your support!
---
## ✍🏼 Author

![Author Image](https://github.com/balusena/observability-monitoring-for-devops/blob/main/banner.png)

---
Made with ❤️ and passion to contribute to the DevOps community by [Bala Senapathi](https://github.com/balusena)


















