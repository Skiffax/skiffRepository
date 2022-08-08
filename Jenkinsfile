pipeline {
    agent any

    stages {
        stage("create docker image") {
        steps {
            echo "start building docker image skiff"
            sh 'docker build .'
        }
        }
    }
}