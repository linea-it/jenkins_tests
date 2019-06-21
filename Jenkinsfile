pipeline {
    environment {
        DEPLOYMENT = 'jenkins_tests'
    }
    agent any
    stages {
        stage('Testing') {
            steps {
                sh('tag=`git describe --tags ${GIT_COMMIT}` || echo ""')
                sh('printf "{\"tag\":\"%s\",\"commit\":\"%s\"}\n" \"$tag\" \"$GIT_COMMIT\" > version.json')
                sh('cat version.json')
                sh 'printenv'
            }
        }
    }
}
