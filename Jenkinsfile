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

                    env.JENKINS_LAUNCH_DIAGNOSTICS=true
                    sh 'ls -lrt'
                }
            }
            }
        }
    }
}
