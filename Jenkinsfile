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
pwd
sudo molecule test'''
      }
    }
  }
}