#!groovy
// test pipe
properties([disableConcurrentBuilds()])

pipeline {
    agent { 
        label 'ja1'
        }
    options {
        buildDiscarder(logRotator(numToKeepStr: '10', artifactNumToKeepStr: '10'))
        timestamps()
    }
    stages {
        stage("First step") {
            steps {
                sh 'hostname'
            }
        }
        
    }
}

