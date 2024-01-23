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
                    dir('/bin/sh'){
                    echo 'Before sh step : $(pwd)'
                    sh 'terraform version'
                    echo 'After sh step'
                }}
            }
            }
        }
    }
}
