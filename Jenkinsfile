pipeline {
    agent none

    stages {
        stage('Terraform Stage') {
            agent {
                label 'terraform-agent'
            }
            steps {
                script {
                    dir('/bin/terraform') {
                    // Terraform commands go here
                    sh 'terraform'
                    // sh 'terraform apply -auto-approve'
                    // Add more Terraform commands as needed
                    }
                }
            }
        }
    }
}
