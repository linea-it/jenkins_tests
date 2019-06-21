pipeline {
    environment {
        DEPLOYMENT = 'jenkins_tests'
        TAG = sh('git describe --tags ${GIT_COMMIT} || echo "Fail"')
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
