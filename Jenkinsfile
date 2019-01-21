pipeline {
  agent {
    docker {
      image 'retr0h/molecule'
      args '-it'
    }

  }
  stages {
    stage('Build') {
      agent {
        docker {
          image 'retr0h/molecule'
        }

      }
      steps {
        sh '''env
sudo molecule test'''
      }
    }
  }
}