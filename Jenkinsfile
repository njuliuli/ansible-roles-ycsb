pipeline {
  agent any
  stages {
    stage('Build') {
      agent {
        docker {
          args '-u molecule:molecule -v /var/run/docker.sock:/var/run/docker.sock'
          image 'retr0h/molecule'
        }

      }
      steps {
        sh 'sudo molecule test'
      }
    }
  }
}