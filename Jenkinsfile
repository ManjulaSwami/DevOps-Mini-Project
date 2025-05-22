pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                bat 'docker build -t devops-mini-project .'
            }
        }

        stage('Run Docker Container') {
            steps {
                bat 'docker rm -f devops-container || echo "No old container"'
                bat 'docker run -d --name devops-container -p 8082:80 devops-mini-project'
            }
        }
    }
}
