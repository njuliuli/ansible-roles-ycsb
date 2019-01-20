pipeline {
  agent {
    docker {
      image 'quay.io/ansible/molecule'
    }

  }
  stages {
    stage('Build') {
      steps {
        sh '''docker ps
molecule syntax'''
      }
    }
  }
}