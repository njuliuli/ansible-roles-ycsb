pipeline {
  agent {
    docker {
      image 'retr0h/molecule'
      args '--privileged -it bash'
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