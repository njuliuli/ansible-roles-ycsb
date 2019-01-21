pipeline {
  agent {
    docker {
      image 'retr0h/molecule'
      args '-u root:root -v /var/run/docker.sock:/var/run/docker.sock'
    }

  }
  stages {
    stage('Build') {
      steps {
        sh 'molecule test'
      }
    }
  }
}