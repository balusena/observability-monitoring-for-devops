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
ELK Stack requires Java (version 11+). Install OpenJDK using the following command.
```
ubuntu@balasenapathi:~$ sudo apt install openjdk-11-jdk
```
- Verify the installation.
```
ubuntu@balasenapathi:~$ java -version
```

### 3. Install Elasticsearch
Elasticsearch is the storage and search engine for the ELK stack. Follow these steps to install it.

- Download and install the Elasticsearch public signing key.
```
ubuntu@balasenapathi:~$ wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
```

- Add the Elasticsearch repository to the APT sources list
```
ubuntu@balasenapathi:~$ sudo sh -c 'echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" > /etc/apt/sources.list.d/elastic-7.x.list'
```

- Install Elasticsearch.
```
ubuntu@balasenapathi:~$ sudo apt update

ubuntu@balasenapathi:~$ sudo apt install elasticsearch
```

- Enable and start the Elasticsearch service.
```
ubuntu@balasenapathi:~$ sudo systemctl enable elasticsearch

ubuntu@balasenapathi:~$ sudo systemctl start elasticsearch
```

-Verify that Elasticsearch is running.
```
ubuntu@balasenapathi:~$ curl -X GET "localhost:9200/"
```






