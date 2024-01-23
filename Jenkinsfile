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
                    sh 'ls -lrt'
                    echo 'After sh step'
                }
            }
            }
        }
    }
}
