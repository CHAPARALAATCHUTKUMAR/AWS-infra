pipeline {
    agent none

    stages {
        stage('Terraform Stage') {
            agent {
                label 'terraform-agent'
            }
            steps {
                container('terrafrom'){

                script {
                    sh 'terraform version'
                }
            }
            }
        }
    }
}
