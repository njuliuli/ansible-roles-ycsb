pipeline {
  agent {
    docker {
      image 'quay.io/ansible/molecule'
    }

  }
  stages {
    stage('Build') {
      steps {
        sh 'nmp install'
      }
    }
  }
}