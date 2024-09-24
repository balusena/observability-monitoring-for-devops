# Prometheus Installation and Setup

## Prometheus
Prometheus is an open-source monitoring system and time-series database. It is designed to collect metrics from various 
targets, store them, and allow for powerful queries and alerting.

## Key Features:
- Multi-dimensional Data Model: Metrics are stored with key-value pairs called labels, allowing for complex and detailed queries.
- Time Series Database (TSDB): Prometheus stores data as time series, with each data point being associated with a timestamp.
- Powerful Query Language (PromQL): Prometheus Query Language is used to query and aggregate time-series data.
- Service Discovery: Automatically discovers services and targets based on their labels.
- Alerting: Prometheus can trigger alerts based on specific conditions, which can be configured using the Alertmanager.

## Prometheus installation and setup in Ubuntu Linux 

### Prerequisites

1. **Ubuntu** with 20.04 LTS Version.
2. **Root user** account with sudo privilege.
3. **Prometheus** system user and group.
4. **Sufficient storage** on your system and good internet connectivity.
5. **Ports Required**:
   - **9090** ---> Prometheus
   - **3000** ---> Grafana
   - **9100** ---> Node Exporter
   
### Prometheus installation steps:
Certainly! Here are the installation steps for Prometheus on Ubuntu 20.04 without creating a dedicated user:

#### 1.Update System Packages:
```
ubuntu@balasenapathi:~$ sudo apt update
[sudo] password for ubuntu:balasenapathi

ubuntu@balasenapathi:~$ sudo apt upgrade
```

#### 2.Download Prometheus from https://prometheus.io/download/
```
ubuntu@balasenapathi:~$ wget https://github.com/prometheus/prometheus/releases/download/v2.44.0/
prometheus-2.44.0.linux-amd64.tar.gz
--2023-06-21 02:01:51--  https://github.com/prometheus/prometheus/releases/download/v2.44.0/prometheus-2.44.0.linux-amd64.tar.gz
Resolving github.com (github.com)... 140.82.121.4
Connecting to github.com (github.com)|140.82.121.4|:443... connected.
HTTP request sent, awaiting response... 302 Found
Location: https://objects.githubusercontent.com/github-production-release-asset-2e65be/6838921/e7f4fc67-722c-4e3b-b3f4-9abcd8b9359b?X-Amz-
Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIWNJYAX4CSVEH53A%2F20230620%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20230620T203151Z&X-
Amz-Expires=300&X-Amz-Signature=85a8463e3175f7c74827a8f8eed9281d95620a08cae1164f799827f1c5f7d3c8&X-Amz-
SignedHeaders=host&actor_id=0&key_id=0&repo_id=6838921&response-content-disposition=attachment%3B%20filename%3Dprometheus-2.44.0.linux-
amd64.tar.gz&response-content-type=application%2Foctet-stream [following]
--2023-06-21 02:01:52--  https://objects.githubusercontent.com/github-production-release-asset-2e65be/6838921/e7f4fc67-722c-4e3b-
b3f4-9abcd8b9359b?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIWNJYAX4CSVEH53A%2F20230620%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-
Date=20230620T203151Z&X-Amz-Expires=300&X-Amz-Signature=85a8463e3175f7c74827a8f8eed9281d95620a08cae1164f799827f1c5f7d3c8&X-Amz-
SignedHeaders=host&actor_id=0&key_id=0&repo_id=6838921&response-content-disposition=attachment%3B%20filename%3Dprometheus-2.44.0.linux-
amd64.tar.gz&response-content-type=application%2Foctet-stream
Resolving objects.githubusercontent.com (objects.githubusercontent.com)... 185.199.111.133, 185.199.108.133, 185.199.109.133, ...
Connecting to objects.githubusercontent.com (objects.githubusercontent.com)|185.199.111.133|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 90577277 (86M) [application/octet-stream]
Saving to: ‘prometheus-2.44.0.linux-amd64.tar.gz’
prometheus-2.44.0.linux-amd64.tar.g 100%[=================================================================>]  86.38M  2.78MB/s    in 
59s     
2023-06-21 02:02:51 (1.47 MB/s) - ‘prometheus-2.44.0.linux-amd64.tar.gz’ saved [90577277/90577277]
```

#### 3.Extract the Downloaded Archive:
```
ubuntu@balasenapathi:~$ tar xvfz prometheus-2.44.0.linux-amd64.tar.gz
prometheus-2.44.0.linux-amd64/
prometheus-2.44.0.linux-amd64/prometheus.yml
prometheus-2.44.0.linux-amd64/console_libraries/
prometheus-2.44.0.linux-amd64/console_libraries/prom.lib
prometheus-2.44.0.linux-amd64/console_libraries/menu.lib
prometheus-2.44.0.linux-amd64/LICENSE
prometheus-2.44.0.linux-amd64/NOTICE
prometheus-2.44.0.linux-amd64/consoles/
prometheus-2.44.0.linux-amd64/consoles/node-overview.html
prometheus-2.44.0.linux-amd64/consoles/node-disk.html
prometheus-2.44.0.linux-amd64/consoles/index.html.example
prometheus-2.44.0.linux-amd64/consoles/node-cpu.html
prometheus-2.44.0.linux-amd64/consoles/prometheus.html
prometheus-2.44.0.linux-amd64/consoles/node.html
prometheus-2.44.0.linux-amd64/consoles/prometheus-overview.html
prometheus-2.44.0.linux-amd64/prometheus
prometheus-2.44.0.linux-amd64/promtool
```

#### 4.Move into the Extracted Directory:
```
ubuntu@balasenapathi:~$ ls
Desktop               Documents         learnlinux                     prometheus-2.44.0.linux-amd64.tar.gz  snap
devops_balu_github    Downloads         Music                          Public                                Templates
docker_flask          hadoopMyFiles     Pictures                       PycharmProjects                       Videos
Dockers-ML-Flask-App  hello_file.ipynb  prometheus-2.44.0.linux-amd64  pythonprograms

ubuntu@balasenapathi:~$ cd prometheus-2.44.0.linux-amd64/

ubuntu@balasenapathi:~/prometheus-2.44.0.linux-amd64$ ls
console_libraries  consoles  LICENSE  NOTICE  prometheus  prometheus.yml  promtool
```

#### 5.Start Prometheus:
```
ubuntu@balasenapathi:~/prometheus-2.44.0.linux-amd64$ ./prometheus

Go to any web browser and start with the following commands

http://localhost:9090

192.168.116.130:9090

test : promhttp_metric_handler_requests_total{code="200"}
```
**Note:** By default, Prometheus will start with the configuration file prometheus.yml in the same directory. You can 
modify this file as per your requirements.

**Note:** If you want Prometheus to run in the background as a service, you can create a systemd unit file without a 
dedicated user.Here are the steps to do that:

#### 6.Create the systemd Unit File:
```
sudo gedit /etc/systemd/system/prometheus.service

Add the following content to the file:

[Unit]
Description=Prometheus
Wants=network-online.target
After=network-online.target

[Service]
User=ubuntu
Group=ubuntu
Type=simple
ExecStart=/home/ubuntu/prometheus-2.33.1.linux-amd64/prometheus --config.file=/home/ubuntu/prometheus.yml

[Install]
WantedBy=default.target

Replace /path/to/prometheus-2.33.1.linux-amd64/ with the actual path to the Prometheus directory.===> get that by pwd command

Reload systemd and Start Prometheus:

sudo systemctl daemon-reload
sudo systemctl start prometheus
```
**Note:** Now, Prometheus should be running as a systemd service on your Ubuntu machine using your current user (ubuntu).
Adjust the version numbers in the steps above to match the latest available version of Prometheus at the time of installation.




