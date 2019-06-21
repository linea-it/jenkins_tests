pipeline {
    environment {
        DEPLOYMENT = 'jenkins_tests'
        TAG = sh('git describe --tags ${GIT_COMMIT} || echo ""')
        REFS_TAG = sh('git describe --tags --all || echo ""')
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
