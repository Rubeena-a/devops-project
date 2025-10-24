

# Git Workflow Documentation
📋 Project Overview
This repository demonstrates enterprise-grade Git practices and DevOps workflows through a hands-on project. Follow this README to implement a fully version-controlled DevOps project with proper branching, merging, and collaboration strategies.

## 🎯 Learning Objectives
- Git branching strategies (GitFlow-like workflow)
- Pull request workflows and code review processes
- Semantic versioning with Git tags
- Professional commit message conventions
- Repository management best practices
- DevOps project structure and documentation

## 🛠️ Prerequisites
Required Tools
- Git (version 2.25+ recommended)
- GitHub Account (or GitLab/Bitbucket)
- Gitbash
- Text Editor (VS Code recommended)

## Knowledge Prerequisites
- Basic command line familiarity
- Fundamental Git concepts (commit, push, pull)
- Markdown syntax understanding

## Project Structure 
<img width="490" height="305" alt="image" src="https://github.com/user-attachments/assets/af88b788-a425-4fd2-a0cf-9072f6882c4f" />

## Branching Strategy
- `main`: Production code
- `dev`: Integration branch
- `feature/*`: New features
- `release/*`: Release preparation
- `hotfix/*`: Emergency fixes
<img width="531" height="193" alt="image" src="https://github.com/user-attachments/assets/f6a3b1a8-5abf-4db1-a0cb-370446bc836f" />

## Commit Convention
- feat: New feature
- fix: Bug fix
- docs: Documentation
- style: Formatting
- refactor: Code restructuring
- test: Testing
- chore: Maintenance

## Pull Request Process
1. Create feature branch from dev
2. Develop and test feature
3. Create PR to dev
4. Code review
5. Merge and delete feature branch

## Automated Deployment
<img width="441" height="77" alt="image" src="https://github.com/user-attachments/assets/276225d7-1f91-41d5-aece-4fe6191c68a5" />

### Testing
```
./scripts/test.sh
```

## Best Practices Implemented:
- Meaningful commit messages with conventional format
- Feature branch workflow with PR reviews
- Branch protection through PR requirements
- Semantic versioning with Git tags
- Comprehensive .gitignore for clean repositories
- Documentation in markdown format
- Regular synchronization between branches

## Author 
Rubeena Shaik
