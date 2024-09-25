# Observability Monitoring AWS DevOps Project

## AWS DevOps Project
The aws-devops-end-to-end-project repository encompasses a comprehensive suite of modules and services designed to support
the deployment and management of the RoboShop application in a cloud-native environment. This project features multiple 
microservices, including frontend, catalogue, user, cart, payment, shipping, and dispatch, each responsible for specific 
functionalities within the application.

To ensure robust infrastructure management, the repository includes various Terraform modules, such as tf-module-documentdb,
tf-module-elasticache, tf-module-rds, and tf-module-rabbitmq, facilitating the setup of essential AWS services like DocumentDB,
ElastiCache, RDS, and RabbitMQ. Networking is managed through tf-module-vpc and tf-module-alb, ensuring secure communication 
and efficient load balancing.

Additionally, the project incorporates automation tools like roboshop-ansible for OS-level configurations, roboshop-jenkins 
for CI/CD pipelines, and roboshop-kubernetes for orchestrating containerized applications on EKS. Parameter management is 
handled by aws-parameter-store and aws-parameter-init-container, while database schema initialization is supported by 
schema-load-init-container. Overall, this repository serves as a comprehensive solution for deploying, managing, and scaling 
the RoboShop application in an AWS cloud environment.

1. **frontend**
2. **catalgoue**
3. **user**
4. **cart**
5. **payment**
6. **shipping**
7. **dispatch**
8. **tf-module-documentdb**
9. **tf-module-elasticache**
10. **tf-module-rds**
11. **tf-module-rabbitmq**
12. **tf-module-vpc**
13. **tf-module-alb**
14. **tf-module-app**
15. **tf-module-eks**
16. **aws-parameter-store**
17. **aws-parameter-init-container**
18. **schema-load-init-container**
19. **roboshop-ansible**
20. **roboshop-terraform**
21. **roboshop-jenkins**
22. **roboshop-kubernetes** 

## Observability and Monitoring AWS DevOps Project

In this project, we are using the ELK stack, Filebeat, Prometheus, Grafana, for Four Golden Signals and New Relic APM to
monitor the shipping application, which is built on Java.

### Project Approach Using ELK Stack for Log Collection and Management:

![ELK Stack for Log Collection and Management](https://github.com/balusena/observability-monitoring-for-devops/blob/main/08-Observability%20Monitoring%20AWS%20DevOps%20Project/elk-stack-log-collection.png)

In our DevOps project, we integrate the ELK stack to optimize log collection and management. Logs from services like 
Payment, Frontend, and Shipping are processed through Logstash for structured formatting, while logs from Cart, Catalogue,
and User are directly indexed in Elasticsearch. This ensures efficient data organization, real-time monitoring, and detailed
analysis. By utilizing Elasticsearch's powerful indexing and Logstash's data transformation capabilities, we centralize 
log management, streamline troubleshooting, and gain valuable insights into application performance and user behavior. 
This implementation enhances operational efficiency and ensures robust log and database management throughout the project
lifecycle.

### Four Golden Signals from Google's Site Reliability Engineering (SRE):
The Four Golden Signals, as defined by Google's Site Reliability Engineering (SRE) practices, are key metrics for monitoring
system performance and reliability:

1. **Latency**: Measures the time taken to service a request. It includes the time for both successful and failed requests.
Latency is crucial for understanding user experience, as higher latency can indicate performance bottlenecks.
2. **Traffic**: Indicates the load on the system, usually measured in requests per second or data volume per second. Monitoring
traffic helps with capacity planning and ensures that the system can handle current and future loads.
3. **Errors**: Tracks the rate of failed requests or operations. Errors can reveal underlying issues such as bugs, configuration
problems, or resource exhaustion. Monitoring errors is essential for maintaining system reliability.
4. **Saturation**: Measures how "full" the system is, often reflecting resource utilization like CPU, memory, or disk usage.
High saturation can lead to performance degradation and increased latency, making it crucial to monitor and manage.

Together, these signals provide a comprehensive view of system health, allowing for proactive issue detection and resolution.

![Latency Traffic Errors]()

**Note**: In our project, we focus on monitoring Nginx logs rather than business logic logs. We aim to collect valuable 
data on latency, traffic, and errors from Nginx logs while filtering out irrelevant information.

We use the ELK stack to analyze and visualize logs related to latency, traffic, and errors. For saturation metrics, we 
utilize Prometheus and Grafana. This combination allows for detailed performance monitoring and real-time visualization,
ensuring thorough coverage of all key metrics.

**Note**: To generate continuous data for monitoring, we use an automated script called **roboshop-load-gen**, which 
continuously generates load, producing the necessary data for analysis.

### Project Approach Using Prometheus and ELK Integration:
In this project, we integrate Prometheus with the ELK stack to achieve comprehensive monitoring. Prometheus collects and
stores time-series metrics, which are pushed to Elasticsearch through node-exporters or compatible plugins. This allows
us to visualize metrics alongside log data in Kibana, providing a unified view for both metrics and logs. By integrating
Prometheus with ELK, we enhance operational visibility, enabling easier troubleshooting and more efficient monitoring.

*Note: Prometheus Node-Exporter will export Nginx log metrics to Prometheus, which are then transferred to ELK Logstash.*

- **Service Discovery:**

Service discovery is a key component of our project, automating the detection and monitoring of remote server IP addresses.
This feature allows Prometheus to dynamically identify instances, nodes, or services in our infrastructure, eliminating 
the need for manual configuration updates. Using tools like Kubernetes or Consul, Prometheus automatically configures itself
to scrape metrics from newly discovered services.

For instance, Kubernetes' service discovery enables Prometheus to monitor pods and services based on defined labels and 
selectors, ensuring that infrastructure changes like scaling or reconfiguration are automatically accounted for in the
monitoring setup.

Implementing service discovery ensures that all relevant targets are consistently monitored, enhancing scalability, 
reliability, and operational efficiency. This automation simplifies management and supports proactive monitoring, 
enabling timely issue detection and response.

### Project Approach Using Grafana:
In our Grafana dashboard, we display the status (UP/DOWN) of component API servers in both dev and prod environments, along
with CPU and memory utilization percentages. These metrics address the **saturation** signal from the Four Golden Signals.

For saturation metrics (e.g., CPU, memory usage, and server status), we utilize Prometheus and Grafana. We scale up pod 
resources to meet demand and adjust allocations as needed, while developers synchronize databases with applications using
caching mechanisms to optimize performance. This approach helps reduce downtime and latency, ensuring efficient resource 
utilization and maintaining optimal system performance.

### Project Approach Using New Relic:
In our DevOps project, the Shipping API service has been experiencing extended load times and integration challenges with 
other components. To investigate further, we utilize New Relic’s APM tool to analyze the root cause of latency issues 
specific to the Shipping API. While default logs provide basic insights for all microservices, the Shipping service, which
is built with both Java and Node.js, requires deeper monitoring through New Relic for more comprehensive metric analysis.

**Note**: Our investigation identified that delays in loading the **cities** schema in MySQL are contributing to the
performance issues. Addressing these inefficiencies is crucial for improving the speed and responsiveness of the Shipping 
API in our DevOps project.




