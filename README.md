# DevOps Practice Repository

A beginner-friendly DevOps portfolio project demonstrating an end-to-end workflow:

**Git/GitHub → GitHub Actions / Jenkins → Docker → Kubernetes → Terraform → Ansible**

> This repository is a portfolio/lab project for demonstrating DevOps fundamentals. It is not presented as production infrastructure.

## Project Structure

```text
DevOps-project/
├── app/
│   ├── app.py
│   └── requirements.txt
├── tests/
│   └── test_app.py
├── docker/
│   └── Dockerfile
├── k8s/
│   ├── deployment.yaml
│   └── service.yaml
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
├── ansible/
│   └── setup.yml
├── .github/
│   └── workflows/
│       └── ci.yml
├── Jenkinsfile
├── .gitignore
└── README.md
```

## Application

A small Python Flask API used as a deployment target.

### Run locally

```bash
cd app
python -m venv .venv
# Windows: .venv\Scripts\activate
# Linux/macOS: source .venv/bin/activate
pip install -r requirements.txt
python app.py
```

Open `http://localhost:5000`.

## Testing

```bash
pip install -r app/requirements.txt
pytest -q
```

## Docker

```bash
docker build -t chandana-devops-app -f docker/Dockerfile .
docker run -p 5000:5000 chandana-devops-app
```

## Kubernetes

```bash
kubectl apply -f k8s/
kubectl get pods
kubectl get services
```

## CI/CD

The GitHub Actions workflow installs dependencies and runs tests on pushes and pull requests.

The Jenkinsfile demonstrates the same flow using Jenkins stages:

1. Checkout
2. Install dependencies
3. Run tests
4. Build Docker image

## Terraform

The Terraform files provide a learning example for defining infrastructure as code. Review the variables and provider configuration before using against any real AWS account.

```bash
cd terraform
terraform init
terraform fmt
terraform validate
terraform plan
```

Do not run `terraform apply` against an AWS account unless the configuration has been reviewed and credentials are intentionally configured.

## Ansible

The Ansible playbook demonstrates basic package installation on a Linux host.

```bash
ansible-playbook -i inventory ansible/setup.yml
```

Create your own inventory file and replace the example host before execution.

## Skills Demonstrated

- Linux
- Python
- Git/GitHub
- GitHub Actions
- Jenkins
- Docker
- Kubernetes
- Terraform
- Ansible
- CI/CD
- Testing
- Infrastructure as Code
- REST API fundamentals

## Resume Usage

Suggested resume project title:

**DevOps Practice Repository | Python, GitHub Actions, Jenkins, Docker, Kubernetes, Terraform, Ansible**

Use only the technologies you have actually practiced and can explain during an interview.
