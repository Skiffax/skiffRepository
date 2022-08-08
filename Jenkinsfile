#!groovy

properties([disableConcurrentBuilds()])

pipeline {
    agent any

    stages {
        stage ("docker login") {
            steps {
                echo "------docker login------"
                withCredentials([usernamePassword(credentialsId: 'dockerhub_skiff', usernameVariable: 'USERNAME1', passwordVariable: 'PASSWORD1')]) {
                    docker login -u $USERNAME1 -p $PASSWORD1
                }
            }
        }
        stage("create docker image") {
            steps {
                echo "start building docker image skiff"
                sh 'docker build -t skiffax/testskiffdocker:1 .'
            }
        }
        stage("docker push skiff") {
            steps {
                sh 'docker push skiffax/testskiffdocker:1'
            }
        }
    }
}