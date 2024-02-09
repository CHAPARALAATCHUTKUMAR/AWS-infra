pipeline {
    agent { label 'Jenkins-Slave' }

    parameters {
        choice(name: 'TERRAFORM_ACTION', choices: ['init', 'plan', 'apply', 'destroy'], description: 'Select Terraform action to perform')
    }
    
    environment {
        AWS_CREDENTIALS = credentials('AWS_CRED')
    }

 stages {
        stage('Terraform Initialization') {
            steps {
                script {
                    // Set AWS credentials as environment variables
                    withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', credentialsId: 'AWS_CRED', accessKeyVariable: 'AWS_ACCESS_KEY_ID', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']]) {
                        // Set AWS CLI profile based on Terraform action
                        if (params.TERRAFORM_ACTION == 'init' || params.TERRAFORM_ACTION == 'plan') {
                            sh 'export AWS_PROFILE=terraform-init-profile'
                        } else if (params.TERRAFORM_ACTION == 'apply' || params.TERRAFORM_ACTION == 'destroy') {
                            sh 'export AWS_PROFILE=terraform-apply-destroy-profile'
                        }

                        // Run Terraform init command with reconfigure or migrate-state
                        if (params.TERRAFORM_ACTION == 'init') {
                            sh 'terraform init -reconfigure'
                        } else {
                            sh 'terraform init'
                        }
                    }
                }
            }
        }

        stage('Terraform Action') {
            steps {
                script {
                    // Set AWS credentials as environment variables
                    withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', credentialsId: 'AWS_CRED', accessKeyVariable: 'AWS_ACCESS_KEY_ID', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']]) {
                        // Set AWS CLI profile based on Terraform action
                        if (params.TERRAFORM_ACTION == 'init' || params.TERRAFORM_ACTION == 'plan') {
                            sh 'export AWS_PROFILE=terraform-init-profile'
                        } else if (params.TERRAFORM_ACTION == 'apply' || params.TERRAFORM_ACTION == 'destroy') {
                            sh 'export AWS_PROFILE=terraform-apply-destroy-profile'
                        }

                        // Run Terraform command
                        sh "terraform ${params.TERRAFORM_ACTION}"
                    }
                }
            }
        }
    }
}
