pipeline {
    agent none
    stages {
        stage('Terraform Stage') {
            agent {
                label 'terraform-agent'
            }
            steps {
                withEnv(['PATH=/bin']){
                    sh 'ls -lrt /bin'  
                }
                    container('terraform'){

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
