pipeline {
  agent {
    docker {
      image 'quay.io/ansible/molecule'
      args '-v \'pwd\':/tmp/`pwd`:ro -v /var/run/docker.sock:/var/run/docker.sock -w /tmp/`pwd`'
    }

  }
  stages {
    stage('Build') {
      steps {
        sh '''env
molecule converge'''
      }
    }
  }
}