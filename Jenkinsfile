pipeline {
  agent {
    docker {
      args '--privileged -v /DATA/docker-cache:/docker-cache'
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