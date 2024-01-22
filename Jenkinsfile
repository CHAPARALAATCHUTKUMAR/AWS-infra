pipeline {
    agent none
    stages {
        stage('Terraform Stage') {
            agent {
                label 'terraform-agent'
            }
            environment {
                 PATH = "/bin/sh:$PATH"
            }
            steps {
                container('terraform'){

                script {

                    env.JENKINS_LAUNCH_DIAGNOSTICS=true
                    sh 'terraform version'
                }
            }
            }
        }
    }
}
