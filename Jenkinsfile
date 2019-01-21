pipeline {
  agent {
    docker {
      image 'retr0h/molecule'
      args 'bash'
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