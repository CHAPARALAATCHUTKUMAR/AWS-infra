pipeline {
    agent {
        label 'aws_ec2' 
    }

    environment {
        AWS_CREDENTIALS = credentials('AWS_CREDENTIALS') 
    }

    stages {
        stage('TEST') {
            steps {
                script {
                    withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', credentialsId: 'AWS_CREDENTIALS', accessKeyVariable: 'AWS_ACCESS_KEY_ID', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']]) {
                        // Your AWS CLI or SDK commands go here
                        sh 'aws ec2 describe-instances --query "Reservations[*].Instances[*].[InstanceId,InstanceType,State.Name]" --output table'
                    }
                }
            }
        }
    }
}
