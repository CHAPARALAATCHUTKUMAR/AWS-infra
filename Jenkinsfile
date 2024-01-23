pipeline {
    agent none
    stages {
        stage('Terraform Stage') {
            agent {
                label 'terraform-agent'
            }
            steps {
                // Set the PATH environment variable to /bin
                withEnv(['PATH=/bin']) {
                    container('terraform') {
                        script {
                            echo 'Before sh step :'
                            sh 'terraform version'
                            echo 'After sh step'
                        }
                    }
                }
            }
        }
    }
}
