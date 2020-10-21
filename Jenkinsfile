pipeline {
    environment{
    registryCredential = 'dockerhub_cred'
    }
    agent none
    stages {
        stage('Build') {
            agent { dockerfile true }
            steps {
                sh 'npm --version'
           
            }
        }
    stage('Deploy'){
        agent any
        steps {
            script {
       docker.withRegistry( '', registryCredential ){
            def customImage = docker.build("aseemgoel/midsem_webapp:v1")
            customImage.push()
                    }    
                }
            }
        }
        
    }
}
