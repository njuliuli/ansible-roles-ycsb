pipeline {
  agent {
    docker {
      image 'retr0h/molecule'
      args '-it bash'
    }

  }
  stages {
    stage('Build') {
      steps {
        sh '''env
sudo molecule test'''
      }
    }
  }
}