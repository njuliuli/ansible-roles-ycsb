pipeline {
  agent {
    docker {
      image 'paulfantom/debian-molecule'
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