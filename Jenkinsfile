pipeline {
    environment {
        DEPLOYMENT = 'jenkins_tests'
        TAG = sh(script: "git describe --tags ${GIT_COMMIT}", returnStdout: true)?.trim()
    }
    agent any
    stages {
        stage('Testing') {
            steps {

                sh 'printenv'
            }
        }
    }
}
