# AWS DevOps End to End Project

![AWS DevOps End to End Project](https://github.com/balusena/aws-devops-end-to-end-project/blob/main/aws-devops-project.png)

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


