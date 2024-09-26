# Observability and Monitoring for DevOps
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
              
