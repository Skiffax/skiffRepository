#!groovy
properties([disableConcurrentBuilds()])

pipeline {
//   agent {
//     label 'skiffnode'
//     }
//   options {
//     buildDiscarder(logRotator(numToKeepStr: '10', artifactNumToKeepStr: '10'))
//     timestamps()
//     }
  stages {
    stage("create docker image") {
      steps {
        echo "start building docker image skiff"
        sh 'docker build .'
      }
    }
   }
}
