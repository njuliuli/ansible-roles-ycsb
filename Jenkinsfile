pipeline {
  agent {
    docker {
      image 'retr0h/molecule'
      args '''-v /var/run/docker.sock:/var/run/docker.sock
-u molecule:molecule'''
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