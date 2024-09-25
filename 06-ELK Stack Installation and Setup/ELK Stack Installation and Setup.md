# ELK Stack Installation and Setup

## What is the ELK Stack?
The **ELK Stack** is a collection of three powerful open-source tools used for searching, analyzing, and visualizing 
large amounts of log data in real-time. The name "ELK" comes from the initial letters of its three components:

![ELK Stack](https://github.com/balusena/observability-monitoring-for-devops/blob/main/06-ELK%20Stack%20Installation%20and%20Setup/elk.png)

### 1. Elasticsearch
- A distributed, full-text search and analytics engine.
- It is used to store, search, and analyze large volumes of data quickly.
- It provides real-time search capabilities across structured and unstructured data.

### 2. Logstash
- A log pipeline tool that collects, processes, and forwards log data.
- It can ingest data from a variety of sources, transform it, and send it to a "stash" (usually Elasticsearch) for storage
and search.
- It supports various input, filter, and output plugins, making it flexible for various data sources.

### 3. Kibana
- A data visualization and exploration tool.
- It works on top of Elasticsearch and provides an interface for creating charts, graphs, and dashboards to visualize log
data in real-time.
- It also allows users to search and explore log data interactively.

### Common Use Cases
- **Log Management**: Centralized logging across servers and applications.
- **Security Analytics**: Real-time monitoring and analysis of security events.
- **Operational Intelligence**: Monitoring system performance, application metrics, and infrastructure health.
- **Business Analytics**: Analyzing business metrics from various sources.

The ELK Stack is popular because it's scalable, flexible, and provides a complete solution for real-time log management 
and data analysis. It's often used in DevOps and IT environments to troubleshoot and monitor systems, applications, and
networks.

## ELK installation and setup in Ubuntu Linux

### 1. Update the System
First, ensure that your system is updated and the required packages are installed.
```
ubuntu@balasenapathi:~$ sudo apt update && sudo apt upgrade

ubuntu@balasenapathi:~$ sudo apt install apt-transport-https curl wget
```

### 2. Install Java
ELK Stack requires Java (version 11+)

- **1. Install OpenJDK using the following command.**
```
ubuntu@balasenapathi:~$ sudo apt install openjdk-11-jdk
```
- **2. Verify the installation.**
```
ubuntu@balasenapathi:~$ java -version
```

### 3. Install Elasticsearch
Elasticsearch is the storage and search engine for the ELK stack. Follow these steps to install it.

- **1. Download and install the Elasticsearch public signing key.**
```
ubuntu@balasenapathi:~$ wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
```

- **2. Add the Elasticsearch repository to the APT sources list.**
```
ubuntu@balasenapathi:~$ sudo sh -c 'echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" > /etc/apt/sources.list.d/elastic-7.x.list'
```

- **3. Install Elasticsearch.**
```
ubuntu@balasenapathi:~$ sudo apt update

ubuntu@balasenapathi:~$ sudo apt install elasticsearch
```

- **4. Enable and start the Elasticsearch service.**
```
ubuntu@balasenapathi:~$ sudo systemctl enable elasticsearch

ubuntu@balasenapathi:~$ sudo systemctl start elasticsearch
```

- **5. Verify that Elasticsearch is running.**
```
ubuntu@balasenapathi:~$ curl -X GET "localhost:9200/"
```

### 4. Install Logstash
Logstash is used to collect, process, and forward logs and data.

- **1. Install Logstash using APT.**
```
ubuntu@balasenapathi:~$ sudo apt install logstash
```

- **2. Start and enable the Logstash service.**
```
ubuntu@balasenapathi:~$ sudo systemctl enable logstash

ubuntu@balasenapathi:~$ sudo systemctl start logstash
```

### 5. Install Kibana
Kibana provides the web interface for visualization of logs and metrics stored in Elasticsearch.

- **1. Install Kibana.**
```
ubuntu@balasenapathi:~$ sudo apt install kibana
```

- **2. Enable and start the Kibana service.**
```
ubuntu@balasenapathi:~$ sudo systemctl enable kibana

ubuntu@balasenapathi:~$ sudo systemctl start kibana
```

- **3. To access Kibana, open your web browser and navigate to.**
```
http://localhost:5601
```

### 6. Configure Elasticsearch and Kibana
You may need to edit the configuration files for Elasticsearch and Kibana to allow external access.

- **1. Edit the Elasticsearch configuration file.**
```
ubuntu@balasenapathi:~$ sudo nano /etc/elasticsearch/elasticsearch.yml
```

- **2. Uncomment and modify the following lines.**
```
server.host: "0.0.0.0"
elasticsearch.hosts: ["http://localhost:9200"]
```

- **Restart both services.**
```
ubuntu@balasenapathi:~$ sudo systemctl restart elasticsearch

ubuntu@balasenapathi:~$ sudo systemctl restart kibana
```

### 7. Install Beats 
- **Filebeat**

![Beats](https://github.com/balusena/observability-monitoring-for-devops/blob/main/06-ELK%20Stack%20Installation%20and%20Setup/beats.png)

Filebeat is a lightweight, open-source log shipper designed for forwarding and centralizing log data. It is part of the 
Elastic Stack and operates on the edge of your infrastructure, collecting logs from various sources such as servers and 
applications. Filebeat efficiently sends this log data to either Logstash for further processing or directly to Elasticsearch
for indexing and storage. It features modules for common log formats, simplifying the setup process. By using Filebeat, 
organizations can ensure timely and reliable log collection, enabling real-time analysis and visualization through the 
ELK stack, which enhances overall observability and operational intelligence.

- **1. Install Filebeat.**
```
ubuntu@balasenapathi:~$ sudo apt install filebeat
```

- **2.Enable and configure the Filebeat Elasticsearch module.**
```
ubuntu@balasenapathi:~$ sudo filebeat modules enable elasticsearch
ubuntu@balasenapathi:~$ sudo filebeat setup
```

- **3.Start Filebeat.**
```
ubuntu@balasenapathi:~$ sudo systemctl start filebeat

ubuntu@balasenapathi:~$ sudo systemctl enable filebeat
```

### 8. Verify Installation

- **1. Check that Elasticsearch, Kibana, and Logstash are running.**
```
ubuntu@balasenapathi:~$ sudo systemctl status elasticsearch

ubuntu@balasenapathi:~$ sudo systemctl status kibana

ubuntu@balasenapathi:~$ sudo systemctl status logstash
```

### 9. Access Kibana
Navigate to http://localhost:5601 or your server’s IP in your browser. This will open the Kibana dashboard where you can
explore your logs, create visualizations, and set up dashboards.
```
http://localhost:5601
```
## Summary
By following this step-by-step guide, you should now have the ELK stack (Elasticsearch, Logstash, and Kibana) installed 
and running on your Ubuntu system. This powerful suite allows for efficient centralized logging and data visualization,
making it easier to monitor and analyze your logs in real time.
          
In addition, Filebeat has also been integrated into your setup. Filebeat is a lightweight log shipper that is responsible
for forwarding and centralizing log data. It can efficiently send logs from various sources to Logstash or directly to 
Elasticsearch, ensuring that your log data is collected and processed seamlessly. Together, the ELK stack and Filebeat 
provide a comprehensive solution for managing and analyzing your log data, enhancing your operational insights and 
facilitating better decision-making.




