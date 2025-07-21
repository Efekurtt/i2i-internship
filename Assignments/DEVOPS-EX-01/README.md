# DEVOPS-EX-01 – Internship Assignment

## 1. Configuration as Code (CaC) vs Infrastructure as Code (IaC)

- **CaC (Configuration as Code)**: Manages application-level configuration using code.  
  *Example*: Using `nginx.conf` to configure reverse proxy settings.

- **IaC (Infrastructure as Code)**: Manages infrastructure (VMs, networks) using code.  
  *Example*: Using Terraform to provision AWS EC2 and S3 instances.

---

## 2. Terraform vs Ansible vs CloudFormation

| Tool             | Type                    | Scope                          | Approach    |
|------------------|-------------------------|--------------------------------|-------------|
| Terraform        | IaC                     | Multi-cloud infrastructure     | Declarative |
| Ansible          | Configuration Management| Application setup              | Imperative  |
| CloudFormation   | IaC (AWS only)          | AWS-specific infrastructure    | Declarative |

---

## 3. What is Docker Compose?

Docker Compose is a tool for defining and running multi-container Docker applications using a YAML file.

**Use cases:**
- Running multi-service apps locally
- Easily defining app dependencies (backend, DB, frontend)
- Rapid development and testing of microservices

---

## 4. Docker Compose: Default Network and Communication

- **Default network**: A bridge network named `<project>_default`
- **Communication**: Services communicate by their service names (DNS-based)

Example: `frontend` can call `http://backend:5000`

---

## 5. Completed `docker-compose.yml`

```yaml
version: '3.8'
services:
  backend:
    image: python:3.9
    container_name: backend
    ports:
      - "5000:5000"
    networks:
      - app-network

  frontend:
    image: nginx:latest
    container_name: frontend
    ports:
      - "80:80"
    depends_on:
      - backend
    networks:
      - app-network

networks:
  app-network:
    driver: bridge
```

---

## 6. Continuous Integration (CI) vs Continuous Deployment (CD)

- **CI (Continuous Integration)**: Automatically builds and tests code on each commit.  
- **CD (Continuous Deployment)**: Automatically deploys tested code to production or staging environments.

---

## 7. What is a Pipeline? Example Steps

A **pipeline** is an automated process for software delivery from code to production.

**Typical steps:**
1. Checkout code from repo
2. Run unit tests
3. Perform static code analysis (linting)
4. Build artifacts
5. Deploy to test
6. Manual/auto deploy to production

---

## 8. Conditional Deployment Pipeline Configuration

Run tests on pull requests, deploy only on `main` merge:

```yaml
on:
  push:
    branches:
      - main
  pull_request:
    branches:
      - "*"
```

---

## 9. Prometheus + Grafana Setup Issue

**Problem**: Grafana shows no metrics from Prometheus.

**Possible causes:**
- Prometheus container not running
- Grafana misconfigured Data Source
- Services not on same Docker network

**Fix:**
- Ensure Prometheus is running on port 9090
- In Grafana: Data Sources → Add Prometheus → URL: `http://prometheus:9090`
- Use `networks:` in Docker Compose to connect both services

---

## 10. 6 Popular DevOps Tools

| Tool        | Description                          |
|-------------|--------------------------------------|
| Docker      | Containerization                     |
| Kubernetes  | Container orchestration              |
| Jenkins     | CI/CD automation                     |
| Terraform   | IaC tool to manage cloud infra       |
| Ansible     | Automation and configuration         |
| Prometheus  | Monitoring and alerting system       |

---

## 11. Preferred Branching Strategy

**GitFlow** is recommended for structured and scalable teamwork.

- Separate branches for `feature`, `develop`, `release`, `hotfix`
- Easy to manage production-ready code
- Better collaboration in teams

---

## 12. 10 Widely Used Git Commands

```bash
git init           # Initialize a new Git repository
git clone <url>    # Clone an existing repository
git add .          # Stage all changes
git commit -m ""   # Commit with a message
git status         # Show working tree status
git push           # Push changes to remote repo
git pull           # Fetch and merge remote changes
git checkout -b    # Create and switch to a new branch
git merge <branch> # Merge a branch into current
git log            # View commit history
```


