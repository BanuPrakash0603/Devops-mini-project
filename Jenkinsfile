pipeline {
    agent any

    stages {

        stage('Clone Code') {
            steps {
                git branch: 'main', url: 'https://github.com/umanagesh789/student-feedback-system.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                bat 'docker build -t student-feedback-app .'
            }
        }

        stage('Run Container') {
            steps {
                bat 'docker stop student-app || exit 0'
                bat 'docker rm student-app || exit 0'
                bat 'docker run -d -p 5000:5000 --name student-app student-feedback-app'
            }
        }

    }
}