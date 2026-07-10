pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git url: 'https://github.com/frebelkacem-cell/devops-jenkins-tp.git', branch: 'main'
            }
        }
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Test') {
            steps {
                junit 'target/surefire-reports/*.xml'
            }
        }
        stage('Summary') {
            steps {
                echo 'Pipeline mis a jour automatiquement via webhook GitHub.'
            }
        }
    }
}
