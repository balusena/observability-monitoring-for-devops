# Grafana Installation and Setup

## Grafana
Grafana is an open-source platform for monitoring and observability that supports a wide range of data sources, including
Prometheus, and provides powerful visualization and alerting capabilities.

## Key Features
- Integration with Multiple Data Sources: Supports Prometheus, InfluxDB, Elasticsearch, and more.
- Custom Dashboards: Create, customize, and share dashboards to visualize data.
- Alerting: Set up alerts and notifications for critical metrics.
- Rich Visualization Options: Graphs, heatmaps, tables, and more.

## Grafana installation and setup in Ubuntu Linux 

### Prerequisites

1. **Ubuntu** with 20.04 LTS Version.
2. **Root user** account with sudo privilege.
3. **Prometheus** system user and group.
4. **Sufficient storage** on your system and good internet connectivity.
5. **Ports Required**:
   - **9090** ---> Prometheus
   - **3000** ---> Grafana
   - **9100** ---> Node Exporter
   
### Grafana  installation steps:

Certainly! Here are the installation steps for Grafana on Ubuntu 20.04 without creating a dedicated user:

Download the Grafana GPG key with wget, then pipe the output to apt-key.This will add the key to your APT installations 
list of trusted keys, which will allow you to download and verify the GPG-signed Grafana package:

#### 1.Add the Grafana repository:
```
ubuntu@balasenapathi:~$ wget -q -O - https://packages.grafana.com/gpg.key | sudo apt-key add -
OK

===>echo "deb https://packages.grafana.com/oss/deb stable main" | sudo tee /etc/apt/sources.list.d/grafana.list<===
```
#
#### 2.Next,add the Grafana repository to your APT sources
```
ubuntu@balasenapathi:~$ sudo add-apt-repository "deb https://packages.grafana.com/oss/deb stable main"
Hit:1 http://security.ubuntu.com/ubuntu focal-security InRelease
Hit:2 http://in.archive.ubuntu.com/ubuntu focal 
InRelease                                                                                    
Get:3 https://packages.grafana.com/oss/deb stable InRelease 
[5,984B]                                                                        
Ign:4 https://pkg.jenkins.io/debian-stable binary/ InRelease                              
Hit:5 https://dl.google.com/linux/chrome/deb stable InRelease                             
Hit:6 https://pkg.jenkins.io/debian-stable binary/ Release
Hit:7 http://in.archive.ubuntu.com/ubuntu focal-updates InRelease
Hit:8 http://in.archive.ubuntu.com/ubuntu focal-backports InRelease
Get:10 https://packages.grafana.com/oss/deb stable/main amd64 Packages [129 kB]
Fetched 135 kB in 3s (46.1 kB/s)    
Reading package lists... Done
N: Skipping acquire of configured file 'main/binary-i386/Packages' as repository 'https://packages.grafana.com/oss/deb stable InRelease' 
doesn't support architecture 'i386'
 
The warning message "N: Skipping acquire of configured file 'main/binary-i386/Packages' as repository 'https://packages.grafana.com/oss/
deb stable InRelease' doesn't support architecture 'i386'" is not a cause for concern. It simply means that the repository does not 
provide packages specifically for the 'i386' architecture, which is typically 32-bit systems. As long as you're using a 64-bit Ubuntu 
system, you can proceed with the installation of Grafana without any issues.
```

#### 3.Update the package index/Refresh your APT cache to update your package lists:
```
ubuntu@balasenapathi:~$ sudo apt update
Hit:1 http://in.archive.ubuntu.com/ubuntu focal InRelease
Hit:2 http://in.archive.ubuntu.com/ubuntu focal-updates 
InRelease                                                                            
Hit:3 http://in.archive.ubuntu.com/ubuntu focal-backports 
InRelease                                                                          
Ign:4 https://pkg.jenkins.io/debian-stable binary/ 
InRelease                                                                                 
Hit:5 https://pkg.jenkins.io/debian-stable binary/ 
Release                                                                                   
Hit:6 http://security.ubuntu.com/ubuntu focal-security InRelease                                                                
Hit:7 https://dl.google.com/linux/chrome/deb stable InRelease                                      
Hit:8 https://packages.grafana.com/oss/deb stable InRelease                  
Reading package lists... Done                          
Building dependency tree       
Reading state information... Done
All packages are up to date.
N: Skipping acquire of configured file 'main/binary-i386/Packages' as repository 'https://packages.grafana.com/oss/deb stable InRelease' 
doesn't support architecture 'i386'
```

#### 4.Install Grafana:
```
ubuntu@balasenapathi:~$ sudo apt install grafana
Reading package lists... Done
Building dependency tree       
Reading state information... Done
The following NEW packages will be installed:
  grafana
0 upgraded, 1 newly installed, 0 to remove and 0 not upgraded.
Need to get 83.1 MB of archives.
After this operation, 304 MB of additional disk space will be used.
Get:1 https://packages.grafana.com/oss/deb stable/main amd64 grafana amd64 10.0.0 [83.1 MB]
Fetched 83.1 MB in 49s (1,707 kB/
s)                                                                                                          
Selecting previously unselected package grafana.
(Reading database ... 239677 files and directories currently installed.)
Preparing to unpack .../grafana_10.0.0_amd64.deb ...
Unpacking grafana (10.0.0) ...
Setting up grafana (10.0.0) ...
Adding system user `grafana' (UID 129) ...
Adding new user `grafana' (UID 129) with group `grafana' ...
Not creating home directory `/usr/share/grafana'.
### NOT starting on installation, please execute the following statements to configure grafana to start automatically using systemd
 sudo /bin/systemctl daemon-reload
 sudo /bin/systemctl enable grafana-server
### You can start grafana-server by executing
 sudo /bin/systemctl start grafana-server
Processing triggers for systemd (245.4-4ubuntu3.22) ...
```

#### 5.Start the Grafana service:
```
ubuntu@balasenapathi:~$ sudo systemctl start grafana-server
```

#### 6.Verify Status, Enable and Start the Grafana service to start on boot:
```
ubuntu@balasenapathi:~$ sudo systemctl status grafana-server

ubuntu@balasenapathi:~$ sudo systemctl enable grafana-server

ubuntu@balasenapathi:~$ sudo systemctl start grafana-server
[sudo] password for ubuntu: balu

ubuntu@balasenapathi:~$ sudo systemctl status grafana-server
● grafana-server.service - Grafana instance
     Loaded: loaded (/lib/systemd/system/grafana-server.service; disabled; vendor preset: enabled)
     Active: active (running) since Thu 2023-06-22 03:14:54 IST; 17s ago
       Docs: http://docs.grafana.org
   Main PID: 39853 (grafana)
      Tasks: 9 (limit: 4558)
     Memory: 133.4M
     CGroup: /system.slice/grafana-server.service
             └─39853 /usr/share/grafana/bin/grafana server --config=/etc/grafana/grafana.ini --pidfile=/run/grafana/grafana-server.pid --
             pack>


Jun 22 03:15:07 ubuntu grafana[39853]: logger=provisioning.alerting t=2023-06-22T03:15:07.949651439+05:30 level=info 
msg>Jun 22 03:15:08 ubuntu grafana[39853]: logger=ngalert.state.manager t=2023-06-22T03:15:08.053492965+05:30 
level=info msg>Jun 22 03:15:08 ubuntu grafana[39853]: logger=ngalert.state.manager 
t=2023-06-22T03:15:08.068670819+05:30 level=info msg>
Jun 22 03:15:08 ubuntu grafana[39853]: logger=grafanaStorageLogger t=2023-06-22T03:15:08.068598456+05:30 level=info 
msg=>Jun 22 03:15:08 ubuntu grafana[39853]: logger=ticker t=2023-06-22T03:15:08.084692999+05:30 level=info 
msg=starting first>Jun 22 03:15:08 ubuntu[39853]: logger=modules t=2023-06-22T03:15:07.958520142+05:30 
level=warn msg="No modules r>Jun 22 03:15:08 ubuntu grafana[39853]: logger=http.server 
t=2023-06-22T03:15:08.169207833+05:30 level=info msg="HTTP Ser>
run 22 03:15:08 ubuntu grafana[39853]: logger=ngalert.multiorg.alertmanager t=2023-06-22T03:15:08.204954925+05:30 
level=>Jun 22 03:15:08 ubuntugrafana[39853]: logger=grafana.update.checker t=2023-06-22T03:15:08.79385192+05:30 
level=info msg>Jun 22 03:15:08 ubuntu grafana[39853]: logger=plugins.update.checker 
t=2023-06-22T03:15:08.867487086+05:30 level=info ms>
```

#### 7.Grafana Login Credentials:
```
username: admin
password: Grafana@123
```


