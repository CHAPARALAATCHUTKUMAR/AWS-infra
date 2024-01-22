pipeline {
    agent none
    environment {
        PATH = "/usr/local/bin:$PATH"
    }

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
                    dir('/home/jenkins/agent'){
                    env.JENKINS_LAUNCH_DIAGNOSTICS=true
                    sh 'terraform version'
                }}
            }
            }
        }
    }
}
