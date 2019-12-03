Jenkinsfile (Declarative Pipeline)
pipeline {
    agent { docker { image '7a7f7ba53177' } }
    stages {
        stage('build') {
            steps {
                sh 'python --version'
            }
        }
    }
}