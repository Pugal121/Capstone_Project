pipeline {
    agent any
    environment {
        DOCKERHUB_CREDENTIALS = credentials('fd48e42f-6cfd-434b-a73b-cc7a48336aea')
    }
    stages {
        stage('Checkout Code') {
            steps {
                // Checkout the code from the master branch
                checkout scm
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t pugal121/dev:${BUILD_NUMBER} .'
                }
            }
        }
        stage('Login to Docker Hub') {
            steps {
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
            }
        }
        stage('Push Image') {
            steps {
                script {
                    sh 'docker push pugal121/dev:${BUILD_NUMBER}'
                }
            }
        }
    }
    post {
        always {
            sh 'docker logout'
        }
    }
}
