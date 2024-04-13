pipeline {
    agent any
    stages {
	stage('Checkout'){
		steps{
			script{
				git branch: 'main', url: 'https://github.com/Creative2709/final-internal-docker.git'
			}
		}
	}
        stage('Test') {
            steps {
                script {
                    // Check if Docker is available
                    bat 'docker info'
                }
            }
        }
        stage('Build') {
            steps {
                script {
                    // Build the Docker image from a Java file
                    bat 'docker build -t my-java-app .'
                }
            }
        }

        stage('Deploy') {
            steps {
                script {
                    	
                   	bat 'docker run -d --name my-java-container my-java-app'
                   
			bat 'docker logs my-java-container'
                }
            }
        }
    }
}
