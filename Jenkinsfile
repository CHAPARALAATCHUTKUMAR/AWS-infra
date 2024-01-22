pipeline {
    agent none

    stages {
        stage('Terraform Stage') {
            agent {
                label 'terraform-agent'
            }
            steps {
                script {
                    sh 'terraform version'
                }
            }
        }
    }
}
