pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build('simple-website')
                    bat 'docker rm -f third-container || echo "No old container"'
                    bat 'docker run -d --name third-container -p 8083:80 devops-third-website'
                }
            }
        }
    }
}
