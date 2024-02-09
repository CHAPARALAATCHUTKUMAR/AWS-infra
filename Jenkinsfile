pipeline {
    agent { label 'Jenkins-Slave' }

    parameters {
        choice(name: 'TERRAFORM_ACTION', choices: ['init', 'plan', 'apply', 'destroy'], description: 'Select Terraform action to perform')
    }
    
    environment {
        AWS_ACCESS_KEY_ID     = """${credentials('AWS_CRED').AWS_ACCESS_KEY_ID}"""
        AWS_SECRET_ACCESS_KEY = """${credentials('AWS_CRED').AWS_SECRET_ACCESS_KEY}"""
    }

    stages {
        stage('Checkout') {
            steps {
                // Checkout the Git repository
                git 'https://github.com/CHAPARALAATCHUTKUMAR/AWS-infra.git'
            }
        }

        stage('Terraform Action') {
            steps {
                script {
                    // Define Terraform commands based on user input
                    if (params.TERRAFORM_ACTION == 'init') {
                        sh 'terraform init'
                    } else if (params.TERRAFORM_ACTION == 'plan') {
                        sh 'terraform plan'
                    } else if (params.TERRAFORM_ACTION == 'apply') {
                        sh 'terraform apply -auto-approve'
                    } else if (params.TERRAFORM_ACTION == 'destroy') {
                        sh 'terraform destroy -auto-approve'
                    } else {
                        error "Invalid Terraform action selected."
                    }
                }
            }
        }
    }
}
