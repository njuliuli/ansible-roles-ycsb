pipeline {
  agent {
    docker {
      image 'retr0h/molecule'
      args '--privileged bash'
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