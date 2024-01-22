pipeline {
    agent none
    stages {
        stage('Terraform Stage') {
            agent {
                label 'terraform-agent'
            }
            steps {
                container('terraform'){

                script {
                    sh 'ls -lrt'
                }
            }
            }
        }
    }
}
