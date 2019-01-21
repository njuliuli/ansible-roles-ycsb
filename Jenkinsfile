pipeline {
  agent {
    docker {
      image 'retr0h/molecule'
      args '-v `pwd`:/tmp/role:ro -v /var/run/docker.sock:/var/run/docker.sock -w /tmp/role'
    }

  }
  stages {
    stage('Build') {
      steps {
        sh '''env
pwd
sudo molecule test'''
      }
    }
  }
}