pipeline {
    agent none

    stages {
        stage('Terraform Stage') {
            agent {
                label 'terraform-agent'
            }
            steps {
                script {
                     def terraformDir = "${WORKSPACE}/terraform"
                    sh "mkdir -p ${terraformDir}"

                    // Run Terraform commands inside the created directory
                    sh "cd ${terraformDir} && /bin/terraform "
                }
            }
        }
    }
}
