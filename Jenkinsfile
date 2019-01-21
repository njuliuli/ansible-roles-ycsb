pipeline {
  agent any
  stages {
    stage('Build') {
      agent {
        docker {
          image 'retr0h/molecule'
          args '-u molecule:molecule --privileged -v /var/run/docker.sock:/var/run/docker.sock'
        }

      }
      steps {
        sh 'sudo molecule test'
      }
    }
  }
}