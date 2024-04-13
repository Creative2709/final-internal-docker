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
                    bat 'docker build -t my-javaapp .'
                }
            }
        }

        stage('Deploy') {
            steps {
                script {
                    	
                   	bat 'docker run -d --name my-javacontainer my-javaapp'
                   
			bat 'docker logs my-javacontainer'
                }
            }
        }
    }
}
