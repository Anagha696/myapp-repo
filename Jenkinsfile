pipeline {
    agent any

    stages {
        stage('Deploy') {
            steps {
                sshagent(credentials: ['azure-vm-credentials']) {
                    sh "ssh azureuser@4.235.121.246 'mkdir -p /var/jenkins_home/deployment/ && rm -rf /var/jenkins_home/deployment/*'"
                    sh "scp purge_queue.sh $azureuser@4.235.121.246:/var/jenkins_home/deployment/"
                    sh "ssh azureuser@4.235.121.246 'chmod +x /var/jenkins_home/deployment/purge_queue.sh && /var/jenkins_home/deployment/purge_queue.sh'"
                }
            }
        }
    }
}

