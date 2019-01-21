pipeline {
  agent {
    docker {
      image 'quay.io/ansible/molecule'
    }

  }
  stages {
    stage('Build') {
      steps {
        sh '''env
#docker info
molecule --version
molecule converge'''
      }
    }
  }
}