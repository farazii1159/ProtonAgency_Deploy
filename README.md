# 🚀 ProtonAgency Deployment — Enterprise DevOps Infrastructure Project

A production-ready, fully automated DevOps infrastructure project showcasing continuous integration, containerization, and cloud deployment pipelines for the **Proton Agency** corporate web platform.

[![Target Platform: Next.js](https://img.shields.io/badge/Platform-Next.js%2014-black?logo=next.js)](https://nextjs.org/)
[![Containerization: Docker](https://img.shields.io/badge/Container-Docker-blue?logo=docker)](https://www.docker.com/)
[![CI/CD: GitHub Actions](https://img.shields.io/badge/CI%2FCD-GitHub%20Actions-darkgreen?logo=github-actions)](https://github.com/features/actions)
[![Hosting: Vercel](https://img.shields.io/badge/Hosting-Vercel-black?logo=vercel)](https://vercel.com/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

---

## 🌐 Live Infrastructure Links

* **Production Deployment Gateway:** [https://proton-agency-deploy.vercel.app](https://proton-agency-deploy.vercel.app)
* **Authoritative GitHub Source:** [https://github.com/farazii1159/ProtonAgency_Deploy](https://github.com/farazii1159/ProtonAgency_Deploy)

---

## 📌 Project Architecture & Overview

This repository demonstrates an industry-standard, GitOps-driven deployment workflow applied to a modern corporate agency web application. The core objective of this project is to eliminate deployment friction, standardize development environments, and enforce pre-flight compilation checks before any code reaches production.

### Key Infrastructure Pillars:
* **Environment Standardization:** Isolated application packaging using Docker to neutralize configuration drift across staging and production.
* **Automated Quality Gates:** A custom continuous integration pipeline using GitHub Actions to perform automated code checkouts, lockfile auditing, and pre-flight container build verifications.
* **High-Availability Edge Hosting:** Zero-downtime continuous deployment targeting Vercel's global edge network, optimized for serverless Next.js delivery.

---

## 🛠️ System Technology Stack

### Application Layer
* **Core Framework:** React.js & Next.js (App Router Architecture)
* **Presentation Layer:** Tailwind CSS & PostCSS
* **Scripting Context:** JavaScript (ES6+) / Node.js Engine

### DevOps & Cloud Infrastructure
* **Containerization Engine:** Docker (OCI-Compliant Images)
* **Version Control Standard:** Git & GitHub Distributed SCM
* **Automation Server:** GitHub Actions (YAML Cloud Runners)
* **Cloud Ingress & Hosting:** Vercel Global Edge Network
* **Base Host Operating System:** Linux (Alpine & Ubuntu Distributions)

---

## 📂 Structural Directory Tree

```bash
PROTONAGENCY-DEPLOYMENT/
│
├── .github/
│   └── workflows/
│       └── deploy.yml          # CI Pipeline Engine Configuration
│
├── .next/                      # Local Optimized Production Build Artifacts (Git-Ignored)
├── app/                        # Next.js App Router (Agency Modules: About, Contact, Work, Pricing)
├── components/                 # UI Component Hierarchy (Hero, Navbar, Footer, Features)
├── public/                     # Static Corporate Assets, Graphics, and Brand Icons
│
├── .gitignore                  # Active Workspace Exclusions Tracking
├── Dockerfile                  # Multi-Layer OCI Containerization Script
├── package.json                # Explicit Module Dependencies & Target Lifecycle Scripts
├── package-lock.json           # Cryptographically Locked Dependency Tree
├── jsconfig.json               # Absolute Project Path Mapping File
├── next.config.mjs             # Next.js Server Optimization Configurations
└── README.md                   # Authoritative System Documentation
⚙️ End-to-End DevOps Engineering Lifecycle
This guide details the explicit, chronological workflow required to take modifications from a local workstation through quality control gates and into production.

📦 Phase 1: Local Engineering Workspace Setup
To spin up the workspace locally and resolve the engineering dependency architecture, execute the following commands within your terminal:

1. Clone the Authority Repository
Pull down the project blueprint and commit history from the remote origin:

Bash
git clone [https://github.com/farazii1159/ProtonAgency_Deploy.git](https://github.com/farazii1159/ProtonAgency_Deploy.git)
2. Change Directory Context
Navigate directly to the root path containing the project configuration manifests:

Bash
cd ProtonAgency_Deploy
3. Resolve Dependencies via Lockfile
Hydrate the local workspace with targeted node modules by strictly honoring the deterministic versions defined inside package-lock.json:

Bash
npm install
📑 DevOps Note: This provisions the node_modules catalog with required dependencies (Next.js core, React engine bindings, animation libraries), preventing development environment drift.

🐳 Phase 2: OCI Containerization Strategy (Docker)
To safeguard application behavior across various host servers, the application is packaged inside an isolated, immutable Docker container image.

1. Execute Local Image Build
Compile the application layer into a standardized Docker image using the root configuration rules:

Bash
docker build -t proton-agency:latest .
Compilation Details: The build process leverages an efficient Linux base (e.g., node:alpine), restores production dependencies cleanly with npm ci, runs the native compiler script (npm run build), configures networking environment variables, and packages the optimized build artifacts.

2. Instantiate the Detached Container Runtime
Run an active instance of the compiled image as a background daemon, mapping ingress host port 3000 directly to container port 3000:

Bash
docker run -d -p 3000:3000 --name proton-agency-app proton-agency:latest
3. Ingress Health Check Verification
Validate local server routing by reaching out to the exposed application gate:

Plaintext
Target URL: http://localhost:3000
Open this address inside a web browser to verify that the containerized App Router, assets, and responsive corporate modules render correctly.

🐙 Phase 3: SCM Pipeline Tracking & Upstream Ingestion (Git)
Once updates are locally verified within the containerized runtime, move the changes through the version control staging tree.

1. Analyze Staging Workspace Drift
Verify which source assets have been modified relative to your configuration settings:

Bash
git status
2. Index Changes and Create Semantic Commits
Add targeted file tracking states to your index and seal them with an explicit, conventional commit hash:

Bash
# Stage all untracked and modified workspace records
git add .

# Formulate a structured commit message detailing infrastructure adjustments
git commit -m "feat: optimize core asset tracking layout and update dockerfile paths"
3. Push Commit History Upstream
Transmit the validated commit state to the authoritative repository hosting platform:

Bash
git push origin main
⚡ Webhook Notice: Pushing commits to the tracking branch main launches a continuous integration workflow check in the cloud.

⚙️ Phase 4: Automated Continuous Integration (GitHub Actions)
Upon intercepting the git push event, GitHub Actions dynamically scales an ephemeral cloud runner running an updated Linux virtual machine to check the code according to rules inside .github/workflows/deploy.yml.

Automated Pipeline Sequence:
Repository Evaluation: The workflow pulls down the runtime code history from the triggered commit state.

Environment Hydration: A decoupled, cached Node.js environment is configured on the runner.

Dependency Integrity Checks: The runner executes clean installs to evaluate dependency tree resolution.

Pre-Flight Docker Build Test: The pipeline actively runs a verification compile:

Bash
docker build -t test-build .
If any syntax errors, path breaks, or configuration faults cause a build log exception, the automated runner halts execution immediately. This setup stops unstable updates from moving down the deployment pipeline.

☁️ Phase 5: Production Continuous Deployment (Vercel Core Integration)
Once the pre-flight automation gates report a successful status, the GitOps loop triggers the global hosting platform to deploy the site to production with zero downtime.

Initial Cloud Linking Protocol (One-Time Setup):
Log into your team account console at vercel.com.

Click "Add New" and select "Project" from the workspace interface.

Authorize GitHub permissions to fetch your project index, and select Import for: ProtonAgency_Deploy.

Standardize Project Deployment Bounds:

Framework Preset: Managed as a native Next.js implementation.

Root Directory: Directed to base path context (./).

Build Settings: Bound to automated production triggers (npm run build).

Choose Deploy to initialize cloud-facing serverless hosting nodes.

Continuous Deployment Integration:
Once linked, the pipeline operates autonomously in a hands-off GitOps execution loop:

Plaintext
 [ Local Code Commit ] ──> [ Git Push Origin Main ] ──> [ GitHub Automated CI Checks ]
                                                                     │
                                                                     ▼ (Pass ✅)
 [ Live Production ] <── [ Global Edge Routing ] <── [ Vercel Automated Edge Compiles ]
Every verified push to origin main automatically signals Vercel to compile highly optimized distribution folders behind the scenes. When compilation checks pass, traffic smoothly shifts to the new build at the global routing layer, providing instant updates with zero downtime.

💼 Demonstrated DevOps & Engineering Competencies
Infrastructure Automation: Designing trigger-based integration pipelines that protect master application branches.

Environment Abstraction: Packaging frontend frameworks inside OCI container specs via multi-layer Dockerfiles.

Asset Management Optimization: Managing static agency files, structural assets, and metadata targets cleanly inside Next.js App Router folders.

Operational Engineering: Resolving real-world runtime exceptions, tracking error logs, and fixing package version conflicts.

🎯 Future Infrastructure Roadmaps
Planned cloud-native architecture upgrades for future project sprints include:

🏗️ Infrastructure as Code (IaC): Migrating system architecture definitions over to Terraform configurations.

🐳 Orchestration Layers: Wrapping complex data tiers inside cohesive multi-container Docker Compose definitions.

☁️ Cloud Migration Engine: Transitioning the container runtime over to AWS ECS (Elastic Container Service) nodes.

🔀 Reverse Proxy Gateway: Setting up Nginx systems to act as front-facing load balancers with managed SSL certificates.

📊 Observability Stacks: Injecting Prometheus and Grafana systems to track real-time container metrics and uptime alerts.

👨‍💻 Infrastructure Author
Faraz Shabbir DevOps Engineer & Frontend Systems Developer

GitHub Profile: github.com/farazii1159

LinkedIn Network: linkedin.com/in/faraz-shabbir-5a9227344

⭐ Support & Acknowledgments
If this enterprise deployment blueprint and pipeline configuration helped you structure your automated deployment workflows, consider giving the repository a ⭐!

📄 Repository License
This framework infrastructure code is open-source software maintained under the open-source MIT License.