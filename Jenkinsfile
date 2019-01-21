pipeline {
  agent {
    docker {
      image 'retr0h/molecule'
      args '-v /var/run/docker.sock:/var/run/docker.sock'
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