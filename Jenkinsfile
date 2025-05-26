pipeline {
    agent any

    environment {
        DOCKERHUB_CREDENTIALS = credentials('dockerhub') // Debes crear estas credenciales en Jenkins
        DOCKER_IMAGE = "alejandromons/knote-java"
    }

    stages {
        stage('Compilar') {
            agent {
                docker {
                    image 'maven:3.8.4-openjdk-11'
                }
            }
            steps {
                sh 'mvn clean package -DskipTests'
            }
        }
        stage('Construir imagen Docker') {
            steps {
                sh 'docker build -t $DOCKER_IMAGE:${BUILD_NUMBER} .'
            }
        }
        stage('Login DockerHub') {
            steps {
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
            }
        }
        stage('Push DockerHub') {
            steps {
                sh 'docker push $DOCKER_IMAGE:${BUILD_NUMBER}'
            }
        }
    }
    post {
        success {
            echo "Pipeline completado exitosamente"
        }
        failure {
            echo "El pipeline falló"
        }
    }
} 