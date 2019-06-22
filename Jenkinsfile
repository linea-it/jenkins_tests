pipeline {
    environment {
        DEPLOYMENT = 'jenkins_tests'
    }
    agent any
    stages {
        stage('Testing') {
            steps {
                sh('./version.sh')
                sh 'printenv'
            }
        }
    }
}
