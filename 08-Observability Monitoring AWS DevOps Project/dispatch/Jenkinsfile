pipeline {
    agent {
        node { label 'workstation' }
    }

    stages {
        stage('Build') {
            steps {
                echo 'Build'
            }
        }

        stage('Unit Tests') {
            steps {
                echo 'Unit Tests'
            }
        }

        stage('Code Analysis') {
            steps {
                echo 'Code Analysis'
            }
        }

        stage('Security Scans') {
            steps {
                echo 'Security Scans'
            }
        }

        stage('Publish Artifact') {
            steps {
                echo 'Publish Artifacts'
            }
        }
    }
}
