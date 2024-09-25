# New Relic Installation and Setup

## New Relic Overview

![New Relic](https://github.com/balusena/observability-monitoring-for-devops/blob/main/07-New%20Relic%20Installation%20and%20Setup/newrelic.png)

New Relic is a powerful observability platform designed to monitor the performance of applications and infrastructure in
real-time. It provides a suite of tools that enable developers and operations teams to gain insights into their systems 
through metrics, logs, and traces. With features like Application Performance Monitoring (APM), real user monitoring (RUM),
and synthetic monitoring, New Relic helps identify bottlenecks, optimize performance, and enhance user experience. Its 
intuitive dashboard and advanced analytics capabilities allow for easy visualization and troubleshooting, making it an 
essential tool for teams aiming to improve reliability and maintain system health in dynamic environments.

## Legacy Monitoring vs. New Relic Monitoring

### 1. **Legacy Monitoring**
   - **Approach**: Typically relies on manual checks, system logs, and basic resource monitoring like CPU, memory, and 
   disk usage.
   - **Data Collection**: Limited to individual components or static infrastructure, often using predefined thresholds.
   - **Alerting**: Generates alerts based on static thresholds, leading to frequent false positives or missed issues.
   - **Scope**: Focuses on infrastructure monitoring rather than application performance or user experience.
   - **Drawbacks**: Lacks real-time insights, proactive monitoring, and deep visibility into application health. It 
   struggles with dynamic, cloud-native environments.

![New Relic Legacy Monitoring](https://github.com/balusena/observability-monitoring-for-devops/blob/main/07-New%20Relic%20Installation%20and%20Setup/newrelic-legacy-monitoring.png)
### 2. **New Relic Monitoring**
   - **Approach**: Provides full-stack observability, covering applications, infrastructure, and user experience in 
   real-time.
   - **Data Collection**: Collects metrics, logs, and traces from distributed systems, microservices, and dynamic cloud 
   environments.
   - **Alerting**: Utilizes dynamic baselines and AI-driven alerts, reducing noise and improving detection of actual issues.
   - **Scope**: Monitors performance metrics, transactions, and dependencies across the stack, providing a unified view 
   of application health.
   - **Advantages**: Offers detailed insights into application performance, proactive monitoring, and visualization, 
   making it ideal for modern, complex infrastructures.

![New Relic Monitoring](https://github.com/balusena/observability-monitoring-for-devops/blob/main/07-New%20Relic%20Installation%20and%20Setup/newrelic-monitoring.png)

## New Relic installation and setup in Ubuntu Linux

### 1. Create a New Relic Account
If you don’t already have a New Relic account, sign up for one at the New Relic website.
```
https://newrelic.com/
```

### 2. Install the New Relic Infrastructure Agent
The Infrastructure agent collects data about your server and applications. To install it, follow these steps:

- **1. Add the New Relic APT Repository**
Open your terminal and run the following commands.
```
# Install prerequisites

ubuntu@balasenapathi:~$ sudo apt-get install -y software-properties-common

# Add New Relic's GPG key

ubuntu@balasenapathi:~$ curl -L https://download.newrelic.com/548C16BF.gpg | sudo apt-key add -

# Add the New Relic repository

ubuntu@balasenapathi:~$ sudo add-apt-repository "deb [arch=amd64] https://download.newrelic.com/infrastructure_agent/linux/apt $(lsb_release -cs) main"
```

- **2. Update and Install the Agent.**
```
# Update the package list
ubuntu@balasenapathi:~$ sudo apt-get update

# Install the New Relic Infrastructure agent
ubuntu@balasenapathi:~$ sudo apt-get install newrelic-infra -y
```

### 3. Configure the New Relic Infrastructure Agent
After installation, you need to configure the agent with your New Relic license key.

- **1. Open the configuration file.**
```
ubuntu@balasenapathi:~$ sudo nano /etc/newrelic-infra.yml
```
- **2. Add your New Relic license key to the configuration.**
```
license_key: YOUR_NEW_RELIC_LICENSE_KEY
```

### 4. Start and Enable the New Relic Infrastructure Agent
To start the agent and enable it to run on boot, execute the following commands.
```
ubuntu@balasenapathi:~$ sudo systemctl start newrelic-infra

ubuntu@balasenapathi:~$ sudo systemctl enable newrelic-infra
```

### 5. Install Language-Specific Agents (Optional)
If you are using specific programming languages, you may want to install language agents (e.g., for Node.js, Python, Java).
Follow the New Relic documentation for instructions based on the programming language you are using.

### 6. Verify the Installation
Log in to your New Relic account and navigate to the Infrastructure tab to verify that your server is reporting data.

## Conclusion
Setting up New Relic on Ubuntu is straightforward. Once installed and configured, you can monitor your applications, 
servers, and infrastructure in real time, gaining insights into performance and identifying potential issues.For further
customization and features, refer to the New Relic documentation for detailed instructions.



