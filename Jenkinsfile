pipeline {
    environment {
        DEPLOYMENT = 'jenkins_tests'
    }
    agent any
    stages {
        stage('Testing') {
            steps {
                sh('export TAG=`git describe --tags ${GIT_COMMIT}` || echo ""')
                sh('export REFS=`git describe --tags --all` || echo ""')
                sh 'printenv'
            }
        }
    }
}
