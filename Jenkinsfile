pipeline {
    agent any

    stages {
        stage('Clone Code') {
            steps {
                git 'https://github.com/krishmehta18/Tesla-dashboard-ui.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    dockerImage = docker.build("tesla/dashboard-ui:latest")
                }
            }
        }

        stage('Run Tests') {
            steps {
                echo "Simulated test step – imagine we check layout or responsiveness here"
            }
        }

        stage('Push to DockerHub') {
            steps {
                withDockerRegistry([credentialsId: 'dockerhub-creds', url: '']) {
                    script {
                        dockerImage.push()
                    }
                }
            }
        }

        stage('Deploy to Kubernetes') {
            steps {
                sh 'kubectl apply -f deploy.yaml || echo "Simulated deployment for demo"'
            }
        }
    }
}

                      
           
