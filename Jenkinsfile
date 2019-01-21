pipeline {
  agent {
    docker {
      image 'retr0h/molecule'
      args '-u molecule:molecule -v /var/run/docker.sock:/var/run/docker.sock'
    }

  }
  stages {
    stage('Build') {
      steps {
        sh '''env
id
sudo molecule test'''
      }
    }
  }
}