pipeline {
    agent none

    stages {
        stage('Terraform Stage') {
            agent {
                label 'terraform-agent'
            }
            steps {
                container('terraform'){
                dir('/home/jenkins') {
                script {
                    sh 'terraform version'
                }
            }}
            }
        }
    }
}
