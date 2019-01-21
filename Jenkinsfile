pipeline {
  agent {
    docker {
      image 'retr0h/molecule'
      args '--privileged -v /var/run/docker.sock:/var/run/docker.sock bash'
    }

  }
  stages {
    stage('Build') {
      steps {
        sh '''env
molecule test'''
      }
    }
  }
}