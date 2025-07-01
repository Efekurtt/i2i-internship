# Hazelcast and Management Center Setup with Docker

## Introduction

Hazelcast is a powerful in-memory data grid platform that provides distributed computing capabilities. The Management Center offers a visual interface to monitor and manage your Hazelcast clusters.  

In this exercise, we'll pull and run Hazelcast and its Management Center using Docker containers, demonstrating how quickly you can set up a distributed computing environment on your local machine.

---

## Purpose  
Pull and run Hazelcast and Hazelcast Management Center containers using Docker.

## Tools Used  
- Docker
- Hazelcast container 
- Hazelcast Management Center 

## Steps and Screenshots

### 1. Pull Hazelcast   
![pull-hazelcast](pull-hazelcast.png)  
Pull the latest Hazelcast from Docker Hub.

### 2. Run Hazelcast Container  
![run-hazelcast](run-hazelcast.png)  
Start the Hazelcast container in detached mode.

### 3. Pull Management Center Image  
![pull-management-center](pull-hazelcast-management-center.png)  
Pull the latest Management Center from Docker Hub.

### 4. Run Management Center Container  
![run-management-center](run-hazelcast-management-center.png)  
Start the Management Center container, mapping port 8080.

### 5. Verify Running Containers  
![docker-ps](docker-ps.png)  
Check that both containers are running successfully.

### 6. Access Management Center UI  
![web-interface](web-interface-management-center.png)  
Access the Management Center web interface at http://localhost:8080.

---

## Result  
Successfully set up Hazelcast and its Management Center using Docker containers. The Management Center is accessible and ready to monitor the Hazelcast cluster.