pipeline {
  agent {
    docker {
      image 'quay.io/ansible/molecule'
      args '-v `pwd`:/tmp/$(basename "${PWD}"):ro -v /var/run/docker.sock:/var/run/docker.sock -w /tmp/$(basename "${PWD}")'
    }

  }
  stages {
    stage('Build') {
      steps {
        sh '''env
sudo molecule test'''
      }
    }
  }
}