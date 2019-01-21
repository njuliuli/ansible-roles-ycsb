pipeline {
  agent any
  stages {
    stage('Build') {
      agent {
        docker {
          image 'retr0h/molecule'
          args '-u 0:0 -v /var/run/docker.sock:/var/run/docker.sock'
        }

      }
      steps {
        sh '''cat /etc/passwd
sudo molecule test'''
      }
    }
  }
}