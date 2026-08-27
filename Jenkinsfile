pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Install Dependencies') {
            steps {
                sh 'python3 -m pip install -r app/requirements.txt'
            }
        }

        stage('Test') {
            steps {
                sh 'pytest -q'
            }
        }

        stage('Docker Build') {
            steps {
                sh 'docker build -t chandana-devops-app:latest -f docker/Dockerfile .'
            }
        }
    }

    post {
        success {
            echo 'CI pipeline completed successfully.'
        }
        failure {
            echo 'CI pipeline failed. Check the stage logs.'
        }
    }
}
