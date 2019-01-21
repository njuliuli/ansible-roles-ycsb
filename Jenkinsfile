pipeline {
  agent {
    docker {
      image 'retr0h/molecule'
      args '''-v /var/run/docker.sock:/var/run/docker.sock
-u molecule:molecule
--privileged'''
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