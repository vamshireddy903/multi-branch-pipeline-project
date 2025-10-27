pipeline {
    agent any

    environment {
        IMAGE_NAME = "vamshi589/simple-java-app"
        IMAGE_TAG = "main-${BUILD_NUMBER}"
        FULL_IMAGE = "${IMAGE_NAME}:${IMAGE_TAG}"
        CONTAINER_NAME = "java-stag-container"
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'stag', credentialsId: 'github', url: 'https://github.com/vamshireddy903/multi-branch-pipeline-project.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build --no-cache -t $FULL_IMAGE .'
            }
        }

        stage('Create Container') {
            steps {
                sh '''
                    docker rm -f $CONTAINER_NAME || true
                    docker run -d --name $CONTAINER_NAME -p 8087:8080 $FULL_IMAGE
                '''
            }
        }
    }
}

