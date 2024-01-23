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
                    echo 'Before sh step'

                    echo 'After sh step'
                    sh 'ls -lrt'
                }
            }
            }
        }
    }
}
