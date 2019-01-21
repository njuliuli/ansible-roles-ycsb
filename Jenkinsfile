pipeline {
  agent {
    docker {
      image 'quay.io/ansible/molecule'
      args '--privileged -v /DATA/docker-cache:/docker-cache'
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