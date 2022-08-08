node {
    //agent any
    def PROJECT_NAME = "Red Alert" // a plain string
    def OWNER_NAME = "Skiff1"
//    def mvnHome
    stage('1PreparationOfSkiffComp') { // for display purposes
        echo "Preparation"
        sh "hostname"
        sh "ip a"
        sleep 6
        }
    stage('2Build (second stage)') {
        echo "Build"
        echo "Hello ${OWNER_NAME}"
        echo "Hello ${PROJECT_NAME}"
        sh "echo '1234' | sudo apt update"
        sh "sudo apt install python"
    }
    stage('3Results') {
        echo "Results"
        sh "python --version"
    }
}
