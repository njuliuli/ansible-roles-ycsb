pipeline {
  agent {
    docker {
      image 'retr0h/molecule'
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