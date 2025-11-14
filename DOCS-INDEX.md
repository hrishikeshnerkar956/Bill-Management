# Documentation Index

Quick guide to all documentation files in this project.

## Essential Reading

### 1. [README.md](README.md) - START HERE
Main documentation covering:
- Project overview
- Quick start guide
- Configuration basics
- Common commands
- Troubleshooting

### 2. [QUICK-REFERENCE.md](QUICK-REFERENCE.md)
One-page cheat sheet with:
- Setup commands
- Common operations
- URLs and ports
- Quick troubleshooting

### 3. [ENV-SETUP.md](ENV-SETUP.md)
Complete environment configuration guide:
- .env file setup
- Environment variables
- Different environments (dev/prod)
- Configuration examples

## Deployment

### 4. [DEPLOYMENT.md](DEPLOYMENT.md)
AWS deployment guide:
- Infrastructure setup
- Step-by-step deployment
- Security configuration
- Monitoring setup
- Rollback procedures

## Development

### 5. [CONTRIBUTING.md](CONTRIBUTING.md)
For contributors:
- Development setup
- Code style guidelines
- Testing requirements
- Pull request process

### 6. [CHANGELOG.md](CHANGELOG.md)
Version history and changes

### 7. [PROJECT-SUMMARY.md](PROJECT-SUMMARY.md)
High-level project overview:
- Architecture
- Technology choices
- Key features
- Statistics

## Configuration Files

### Application Configuration
- `.env` - Your environment variables (not in git)
- `.env.example` - Template for .env
- `application.properties` - Spring Boot base config
- `application-dev.properties` - Development config
- `application-prod.properties` - Production config

### Docker Configuration
- `docker-compose.yml` - Production setup
- `docker-compose.dev.yml` - Development setup
- `Dockerfile` - Backend container
- `nginx.conf` - Frontend web server

### Database
- `init.sql` - Database schema and sample data

### CI/CD
- `Jenkinsfile` - Jenkins pipeline
- `deploy-aws.sh` - AWS deployment script
- `task-definition.json` - ECS task definition

### Frontend
- `frontend/env-config.js` - Generated frontend config
- `generate-frontend-config.sh` - Config generator (Linux/Mac)
- `generate-frontend-config.bat` - Config generator (Windows)

## Reading Order

### For New Users
1. README.md
2. QUICK-REFERENCE.md
3. ENV-SETUP.md

### For Developers
1. README.md
2. ENV-SETUP.md
3. CONTRIBUTING.md
4. PROJECT-SUMMARY.md

### For DevOps
1. README.md
2. ENV-SETUP.md
3. DEPLOYMENT.md
4. Jenkinsfile

## Quick Links

| Need to... | Read this |
|------------|-----------|
| Get started quickly | [README.md](README.md) |
| Find a command | [QUICK-REFERENCE.md](QUICK-REFERENCE.md) |
| Configure environment | [ENV-SETUP.md](ENV-SETUP.md) |
| Deploy to AWS | [DEPLOYMENT.md](DEPLOYMENT.md) |
| Contribute code | [CONTRIBUTING.md](CONTRIBUTING.md) |
| Understand architecture | [PROJECT-SUMMARY.md](PROJECT-SUMMARY.md) |

## File Locations

```
Bill-Management/
├── README.md                    # Main documentation
├── QUICK-REFERENCE.md          # Command cheat sheet
├── ENV-SETUP.md                # Environment guide
├── DEPLOYMENT.md               # AWS deployment
├── CONTRIBUTING.md             # Contribution guide
├── CHANGELOG.md                # Version history
├── PROJECT-SUMMARY.md          # Project overview
├── DOCS-INDEX.md              # This file
├── .env.example               # Config template
├── docker-compose.yml         # Docker setup
├── init.sql                   # Database schema
└── Jenkinsfile               # CI/CD pipeline
```

## Need Help?

1. Check [QUICK-REFERENCE.md](QUICK-REFERENCE.md) for common commands
2. Check [README.md](README.md) troubleshooting section
3. Check [ENV-SETUP.md](ENV-SETUP.md) for configuration issues
4. Open a GitHub issue

---

**Tip**: Bookmark this page for quick access to all documentation!
