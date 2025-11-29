# EventFlow Platform  
### Modular, Cloud-Native Event Management System  
**Azure • .NET 8 • React • Clean Architecture • CQRS • Mediator**

EventFlow Platform is a **next-generation, modular event management system** designed for  
**enterprise-scale environments**, **multi-tenant scenarios**, and **high-complexity workflows**.

It showcases best practices in **modern architecture**, **distributed systems**, **clean code design**, and  
**cloud-native development** — making it an ideal reference implementation for large organizations.

---

# 🚀 Features

- **Modular event lifecycle** (creation, scheduling, sessions, tracks)
- **Speaker & participant management**
- **Ticketing workflows** (QR codes, check-in, validation)
- **Notifications** (email, push, webhooks)
- **Scalable microservice-ready backend**
- **API governance with OpenAPI 3.0**
- **Advanced observability** (Serilog, OpenTelemetry)
- **Enterprise-grade authentication & authorization**
- **Azure-native architecture & DevOps pipelines**

---

# 🧱 Architecture Overview

EventFlow follows a **Clean Architecture** approach:

- **API Layer** — Lightweight .NET 8 WebAPI endpoints
- **Application Layer** — CQRS, Mediator, business workflows
- **Domain Layer** — Aggregates, entities, value objects
- **Infrastructure Layer** — EF Core, Dapper, DB providers, Azure integrations
- **Frontend Layer** — React modular UI with atomic design
- **Cloud Layer** — Azure App Service, API Management, Service Bus, Storage, SQL/Cosmos

Directory layout:

```txt
eventflow-platform/
│
├── backend/
│ ├── src/
│ │ ├── EventFlow.API/
│ │ ├── EventFlow.Application/
│ │ ├── EventFlow.Domain/
│ │ ├── EventFlow.Infrastructure/
│ │ └── EventFlow.Shared/
│ ├── tests/
│ │ ├── EventFlow.UnitTests/
│ │ └── EventFlow.IntegrationTests/
│ └── docker/
│
├── frontend/
│ └── eventflow-react/
│ ├── src/
│ ├── public/
│ └── README.md
│
├── docs/
│ ├── architecture/
│ ├── api/
│ └── flows/
│
├── .github/workflows/
├── docker-compose.yml
└── README.md

````


---

# 🧬 Domain Highlights

- **Event** → core aggregate (title, schedule, metadata, tracks)
- **Session** → sub-units with speakers and materials
- **Ticket** → unique ID, QR code, status (issued/validated/expired)
- **User** → organizers, attendees, speakers
- **Workflow** → event creation, approval, publishing

Structured using:
- Value Objects  
- Strongly typed IDs  
- Domain Events  
- Validation layers (FluentValidation)

---

# 🛠️ Tech Stack

### Backend
- .NET 8 WebAPI  
- Clean Architecture  
- CQRS + Mediator  
- FluentValidation  
- Entity Framework Core / Dapper  
- Serilog + OpenTelemetry  
- PostgreSQL / SQL Server / Azure SQL  
- Azure Service Bus / Storage  

### Frontend
- React 18  
- TypeScript  
- React Router  
- Axios  
- TailwindCSS / Material UI  

### Cloud + DevOps
- GitHub Actions CI/CD  
- Azure App Service  
- Azure API Management  
- Azure Service Bus  
- Docker containers  
- Infrastructure as Code (optional: Bicep/Terraform)

---

# 📄 Documentation

All documentation is under the `/docs` folder:

- **Architecture diagrams**  
- **Domain model**  
- **API specifications (OpenAPI)**  
- **Workflow diagrams**  
- **Azure cloud architecture reference**  

---

# 🧪 Tests

The project includes:

- Unit tests (domain, handlers, mappers)
- Integration tests (API + DB)
- Contract testing (OpenAPI validation)

Test frameworks:
- xUnit  
- FluentAssertions  
- WebApplicationFactory  

---

# 🚦 Status

The project is under active development and will evolve into a full enterprise-grade reference solution.

---

# 🤝 Contributions

Contributions are welcome — issues, PRs, and architectural discussions appreciated!

---

# 📜 License

MIT License.




