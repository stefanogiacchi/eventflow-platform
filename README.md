# EventFlow Platform  
### Modular, Cloud-Native Event Management (Azure • .NET 8 • React)

EventFlow Platform is a **modular, cloud-native event management system** designed for  
**enterprise-scale**, **multi-tenant** environments and **high-complexity workflows**.

Built end-to-end with:

- **.NET 8** (WebAPI + Clean Architecture + CQRS + Mediator)
- **React** (modular UI with component-driven design)
- **Azure-native services** (App Services, Functions, API Management, Service Bus, Storage, SQL/Cosmos)
- **DevOps pipelines** (GitHub Actions + IaC)
- **DDD + SOLID + Enterprise Patterns**

---

## 🚀 Features

- Event lifecycle management (creation, schedules, sessions)
- Speaker management & workflows
- Ticketing flows (QR code, check-in)
- Notifications (email, push)
- Modular microservice-ready backend
- API governance & OpenAPI 3.0
- Observability (Serilog, OpenTelemetry, Prometheus)

---

## 🧱 Architecture Overview

![Architecture](docs/architecture/eventflow-overview.png)

- **API Layer** – lightweight .NET 8 WebAPI  
- **Application Layer** – CQRS, Mediator, Business Logic  
- **Domain Layer** – Entities, Value Objects, Aggregates  
- **Infrastructure Layer** – EFCore, Dapper, DB providers  
- **Frontend** – React modular components  
- **Azure Integration** – messaging, storage, compute  

---

## 📦 Tech Stack

### Backend
- .NET 8 WebAPI
- Clean Architecture
- Mediator Pattern
- FluentValidation
- Serilog + OpenTelemetry
- EF Core / Dapper
- PostgreSQL / SQL Server / CosmosDB

### Frontend
- React 18
- TypeScript
- React Router
- Axios API client
- TailwindCSS / MUI

### DevOps / Cloud
- GitHub Actions CI/CD
- Azure App Service
- Azure API Management
- Azure Service Bus
- Azure Storage
- Docker containers

---

## 📄 Documentation

All documentation is under `/docs`  
- Architecture diagrams  
- Domain models  
- API specs  
- Azure design patterns  
- Data flow diagrams  

---

## 🧪 Tests

The project includes:
- Unit tests  
- Integration tests  
- API contract validation  
- Repository tests  

---

## 📜 License
MIT License.

---

