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


