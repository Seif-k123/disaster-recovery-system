# 🛡️ Enterprise Disaster Recovery & Auto-Healing Cloud Platform

A production-grade cloud infrastructure project built using **AWS + Terraform**, designed to demonstrate real-world Disaster Recovery (DR), high availability, monitoring, and automated self-healing capabilities.

---

# 🚀 Overview

This system automatically provisions and manages cloud infrastructure capable of:

- Infrastructure provisioning using Terraform (IaC)
- High availability using Auto Scaling Group
- Secure network segmentation (VPC + Subnets)
- Real-time monitoring using CloudWatch
- Alerting via SNS notifications
- Auto-healing using AWS Lambda (event-driven recovery)

---

# 🧠 Architecture Design Principles

- High Availability
- Fault Tolerance
- Security by Design
- Infrastructure as Code
- Event-driven automation
- Scalability

---
# ⚙️ Tech Stack

- AWS (EC2, RDS, VPC, S3, SNS, CloudWatch, Lambda)
- Terraform (Infrastructure as Code)
- Ubuntu Linux
- Bash scripting
- Git & GitHub

---

# 🧱 Infrastructure Components

## 🌐 Networking Layer

<img width="1527" height="507" alt="Screenshot 2026-06-18 142322" src="https://github.com/user-attachments/assets/c15e981c-d77d-4611-b2f4-ea679627dd16" />


![Subnets](images/services/subnets.png)

![Route Table](images/services/route-table.png)

- Custom VPC (10.0.0.0/16)
- Public & Private Subnets
- Internet Gateway
- Route Tables

---

## 🖥️ Compute Layer

![ASG](images/services/asg.png)

![Launch Template](images/services/launch-template.png)

- Auto Scaling Group (ASG)
- EC2 instances with Nginx
- Launch Templates

---

## 🗄️ Database Layer

![RDS](images/services/rds.png)

![DB Subnet Group](images/services/db-subnet.png)

- Amazon RDS MySQL 8.0
- Private subnet deployment
- DB subnet group (multi-AZ ready)

---

## 📦 Storage Layer

![S3](images/services/s3.png)

- S3 bucket for backups
- Versioning enabled

---

## 📊 Monitoring & Alerting

![CloudWatch](images/services/cloudwatch.png)

![SNS](images/services/sns.png)

- CloudWatch alarms for EC2 health
- SNS notification system

---

## ⚡ Auto-Healing Layer

![Lambda](images/services/lambda.png)

![Lambda Logs](images/services/lambda-logs.png)

- AWS Lambda function
- Event-driven recovery system
- Triggered by CloudWatch + SNS

---
🚀 Deployment
terraform init

terraform validate

terraform plan

terraform  apply -auto-approve

---
🔐 Security Highlights
- Private database subnet
- Security Groups with least privilege
- Restricted SSH access
- IAM roles for Lambda
- Isolated VPC architecture
---
Key Features ⭐
- Fully automated cloud provisioning using Terraform
- Scalable infrastructure using Auto Scaling Group
- Secure multi-tier architecture (Web + DB separation)
- Real-time monitoring using CloudWatch
- Automated alerting via SNS
- Event-driven auto-healing using Lambda
- Backup system using S3 versioning
- Production-ready AWS architecture design
---
📈 Business Value
- Reduces downtime via automation
- Improves system reliability
- Enables scalable cloud architecture
- Reduces manual intervention in incidents
- Enhances disaster recovery readiness
---
👨‍💻 Author
Seif Khaled
Cloud & DevOps Engineer
# 🔄 Disaster Recovery Workflow

```text id="flow1"
EC2 Failure Detected
        ↓
CloudWatch Alarm Triggered
        ↓
SNS Notification Sent
        ↓
Lambda Function Invoked
        ↓
Auto-Healing Action Executed
        ↓
System Recovery Completed


