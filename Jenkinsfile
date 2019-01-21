pipeline {
  agent {
    docker {
      args '--privileged -v /DATA/docker-cache:/docker-cache'
      image 'alainchiasson/docker-molecule'
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