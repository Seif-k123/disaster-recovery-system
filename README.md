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


<img width="1527" height="703" alt="Image" src="https://github.com/user-attachments/assets/9e1dfddd-1111-4f4f-a15a-dcf87e05648c" />

<img width="1561" height="643" alt="Image" src="https://github.com/user-attachments/assets/6f88faad-cc75-4fd1-9f09-a320863a8830" />

- Custom VPC (10.0.0.0/16)
- Public & Private Subnets
- Internet Gateway
- Route Tables

---

## 🖥️ Compute Layer

<img width="1472" height="391" alt="Image" src="https://github.com/user-attachments/assets/a06ead94-a9fb-4c7c-8471-f7dc027cf2a8" />

<img width="1447" height="457" alt="Image" src="https://github.com/user-attachments/assets/af591157-daf3-48bf-a77f-e96e3330aa8c" />

- Auto Scaling Group (ASG)
- EC2 instances with Nginx
- Launch Templates

---

## 🗄️ Database Layer

<img width="1556" height="781" alt="Image" src="https://github.com/user-attachments/assets/8f689303-20a6-4eb2-9c53-627279dbf7ff" />

<img width="1480" height="497" alt="Image" src="https://github.com/user-attachments/assets/cd501152-aceb-4444-9ec0-94ee52d31de7" />

- Amazon RDS MySQL 8.0
- Private subnet deployment
- DB subnet group (multi-AZ ready)

---

## 📦 Storage Layer

<img width="1522" height="717" alt="Image" src="https://github.com/user-attachments/assets/36cc3094-8a50-4db5-aaf8-afe10dcfcc11" />

- S3 bucket for backups
- Versioning enabled

---

## 📊 Monitoring & Alerting
<img width="1483" height="665" alt="Image" src="https://github.com/user-attachments/assets/f3ab9b3f-1d15-4665-a1f9-e5b881be1770" />

<img width="1562" height="723" alt="Image" src="https://github.com/user-attachments/assets/100bde98-6744-4ec9-81c2-60f0319b89a0" />

- CloudWatch alarms for EC2 health
- SNS notification system

---

## ⚡ Auto-Healing Layer

<img width="1846" height="552" alt="Image" src="https://github.com/user-attachments/assets/dc11cc32-28c7-4a22-8113-7f6842703bbf" />

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


