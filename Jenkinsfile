pipeline {
    agent none

    stages {
        stage('Terraform Stage') {
            agent {
                label 'terraform-agent'
            }
            steps {
                dir('/home/jenkins') {
                script {
                    sh 'terraform version'
                }
            }
            }
        }
    }
}
