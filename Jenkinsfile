pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                // Checkout the repository
                echo 'checkout successful'
            }
        }
        stage('Terraform Init') {
            steps {
                // Run terraform init
                script {
                sh 'terraform init'
            }
            }
        }
        stage('Terraform Apply') {
            steps {
                // Run terraform apply
                script {
                sh 'terraform apply --auto-approve'
            }
        }
            
    }
    
    }

}