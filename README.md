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

# 🏗️ System Architecture

![Architecture](images/services/architecture.png)

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

![VPC](images/services/vpc.png)

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
