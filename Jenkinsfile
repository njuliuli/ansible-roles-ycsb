pipeline {
  agent {
    docker {
      image 'retr0h/molecule'
      args '--privileged'
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