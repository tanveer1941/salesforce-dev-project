# Salesforce Dev Project 🚀

A Salesforce development project with automated CI/CD pipeline using GitHub Actions. This project demonstrates modern Salesforce development practices with automatic deployments on every commit.

## 📁 Project Structure
salesforce-dev-project/
├── .github/
│ └── workflows/
│ └── deploy.yml # GitHub Actions CI/CD pipeline
├── force-app/
│ └── main/
│ └── default/
│ ├── classes/
│ │ ├── HelloWorld.cls # Sample Apex class
│ │ └── HelloWorld.cls-meta.xml # Metadata for HelloWorld
│ ├── objects/ # Custom objects
│ ├── triggers/ # Apex triggers
│ ├── lwc/ # Lightning Web Components
│ └── aura/ # Aura components
├── scripts/ # Deployment scripts
├── .forceignore # Files to ignore during deployment
├── .gitignore # Git ignore rules
├── .prettierrc # Code formatting configuration
├── .prettierignore # Files to ignore for formatting
├── package.json # Node.js dependencies and scripts
└── sfdx-project.json # Salesforce DX project configuration


## 🛠️ Technologies Used

- **Salesforce DX** - Modern Salesforce development
- **GitHub Actions** - CI/CD automation
- **VS Code** - Development environment
- **Salesforce CLI** - Command-line interface
- **Prettier** - Code formatting
- **Husky** - Git hooks for pre-commit formatting

## ⚙️ Setup Instructions

### Prerequisites
1. **Salesforce CLI**: `npm install -g @salesforce/cli`
2. **VS Code** with Salesforce Extension Pack
3. **Git** installed locally
4. **Node.js** (for development tools)

### Local Development Setup
```bash
# Clone the repository
git clone https://github.com/tanveer1941/salesforce-dev-project.git
cd salesforce-dev-project

# Install development dependencies
npm install

# Authorize your Salesforce org
sf org login web -a dev-org

# Set default org
sf config set target-org=dev-org

# Open in VS Code
code .

GitHub Secrets Configuration
Go to Repository Settings → Secrets → Actions

Add these secrets:

SALESFORCE_AUTH_URL: Your Salesforce auth URL

SALESFORCE_ORG_ALIAS: Your org alias (e.g., "dev-org")

To get auth URL:
sf org display --target-org dev-org --verbose
# Copy the "Sfdx Auth Url" from the output

🚀 CI/CD Pipeline
The project includes automated deployment via GitHub Actions. Every push to the main branch triggers:

Deployment Workflow (.github/workflows/deploy.yml):
✅ Checkout code - Pulls the latest changes

✅ Setup Salesforce CLI - Installs required tools

✅ Authenticate - Connects to Salesforce org using auth URL

✅ Deploy - Deploys all metadata changes to target org

✅ Run tests - Executes Apex tests with results

✅ Summary - Creates deployment report

📦 Available Scripts
# Deploy to Salesforce
sf project deploy start --target-org dev-org

# Run Apex tests
sf apex run test --target-org dev-org

# Retrieve metadata from org
sf project retrieve start --target-org dev-org

# Open org in browser
sf org open --target-org dev-org

# Format code with Prettier
npm run prettier

# Check code formatting
npm run prettier:verify

🎯 Sample Code
The project includes a sample Apex class:

force-app/main/default/classes/Hello.cls

🔧 Development Workflow
1. Create Feature Branch
git checkout -b feature/your-feature-name

2. Make Changes in VS Code
Create Apex classes, LWC components, etc.

Code will be automatically formatted on commit

Test locally with sf apex run test

3. Commit and Push
git add .
git commit -m "Add your feature description"
git push origin feature/your-feature-name

4. Create Pull Request on GitHub
5. Merge to Main - triggers auto-deployment
💻 Pre-commit Automation
This project uses Husky and Prettier for automatic code formatting:

✅ Code is automatically formatted before each commit

✅ Consistent coding style across the project

✅ Prevents poorly formatted code from being committed

📝 Best Practices
✅ Use descriptive commit messages

✅ Create feature branches for new work

✅ Test changes locally before committing

✅ Review GitHub Actions logs after deployment

✅ Keep sfdx-project.json updated with API versions

✅ Follow Salesforce development best practices

🐛 Troubleshooting
Common Issues:
Deployment fails

Check GitHub Actions logs for detailed errors

Verify auth URL in GitHub secrets

Ensure org has available storage and permissions

Authentication errors

Regenerate auth URL: sf org display --verbose

Check org alias matches in secrets

Test failures

Run tests locally: sf apex run test

Check test coverage requirements

Pre-commit hooks not working

Run: npx husky install

Ensure Node.js is installed

📊 Deployment Status
https://github.com/tanveer1941/salesforce-dev-project/actions/workflows/deploy.yml/badge.svg

🤝 Contributing
Fork the repository

Create your feature branch (git checkout -b feature/amazing-feature)

Commit your changes (git commit -m 'Add amazing feature')

Push to the branch (git push origin feature/amazing-feature)

Open a Pull Request

📄 License
This project is licensed under the MIT License - see the LICENSE file for details.

🆘 Support
If you encounter any issues:

Check GitHub Actions logs for detailed error messages

Verify Salesforce CLI version: sf --version

Ensure org permissions are correct

Check existing issues or create a new one

Happy Coding! 🎉