pipeline {
    environment {
        DEPLOYMENT = 'jenkins_tests'
    }
    agent any
    stages {
        stage('Testing') {
            steps {
                sh('tag=`git describe --tags ${GIT_COMMIT}` || echo ""')
                sh('printf "{\"\"tag\"\":\"\"%s\"\",\"\"commit\"\":\"\"%s\"\",\"\"url\"\":\"\"%s\"\"}\n" \"$tag\" \"$GIT_COMMIT\" \"$GIT_URL\"> version.json')
                sh('cat version.json')
                sh('jq -n --arg bn "$tag" --arg on "$GIT_COMMIT" --arg tl "$GIT_URL" \'{bucketname: $bn, objectname: $on, targetlocation: $tl}\' > vv.json')
                sh('cat vv.json')
                sh 'printenv'
            }
        }
    }
}
