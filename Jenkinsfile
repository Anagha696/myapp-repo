pipeline {
    agent any

    stages {
        stage('Deploy') {
            steps {
                sshagent(credentials: ['azure-vm-ssh-creds']) {
                  sh "ssh -o StrictHostKeyChecking=no azureuser@4.235.121.246 'sudo mkdir -p /var/jenkins_home/azureuser && sudo chown azureuser:azureuser /var/jenkins_home/azureuser && mkdir -p /var/jenkins_home/azureuser/deployment/ && rm -rf /var/jenkins_home/azureuser/deployment/*'"
                  sh "scp -o StrictHostKeyChecking=no purge_queue.sh azureuser@4.235.121.246:/var/jenkins_home/azureuser/deployment/"
                  sh "ssh -o StrictHostKeyChecking=no azureuser@4.235.121.246 'chmod +x /var/jenkins_home/azureuser/deployment/purge_queue.sh && /var/jenkins_home/azureuser/deployment/purge_queue.sh'"
                }
            }
        }
    }
}

