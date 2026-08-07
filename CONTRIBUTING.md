# 🤝 Contributing Guidelines


Thank you for your interest in contributing to this project.

Contributions, improvements, bug fixes and suggestions are welcome.
Please follow the guidelines below to keep the project organized and maintainable.


---

# 🌿 Branch Naming Convention


All changes should be created from the `main` branch and merged back through a Pull Request.


Use the following branch prefixes:


| Prefix | Purpose |
|---|---|
| `feat/` | Adding a new feature or capability |
| `fix/` | Fixing bugs or incorrect behavior |
| `chore/` | Configuration, tooling and maintenance changes |
| `docs/` | Documentation and README updates |
| `ci/` | CI/CD workflow and pipeline changes |
| `refactor/` | Code improvements without changing functionality |


Examples:


```
feat/add-user-authentication

fix/fix-api-validation

docs/update-deployment-guide

ci/improve-github-actions

chore/update-dependencies
```


---

# 📝 Commit Convention


This project follows **Conventional Commits**.


Commit format:


```
type(scope): imperative summary
```


Examples:


```
feat(api): add health check endpoint

fix(kubernetes): update deployment configuration

docs(readme): update architecture documentation

ci(actions): improve deployment pipeline

chore(terraform): update provider version
```


---

# 🔄 Pull Request Guidelines


Before creating a Pull Request:


✅ Keep changes focused on one unit of work  
✅ Provide a clear description of changes  
✅ Explain why the change was required  
✅ Link related issues using:


```
Closes #<issue-number>
```


Example:


```
Closes #25
```


---

# ✅ Review and Merge Process


Pull Requests should:


- Pass all automated CI checks
- Include required documentation updates
- Be reviewed before merging
- Follow project coding standards


After approval:


- Squash merge the Pull Request
- Delete the feature branch after merge


---

# 🚀 Development Workflow


Typical workflow:


```bash
git checkout main

git pull origin main

git checkout -b feat/new-feature

# make changes

git add .

git commit -m "feat(api): add new endpoint"

git push origin feat/new-feature
```


Create a Pull Request and wait for CI validation.


---

Thank you for helping improve this DevOps project. 🚀
