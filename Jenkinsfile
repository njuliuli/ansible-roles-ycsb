pipeline {
  agent {
    docker {
      image 'retr0h/molecule'
      args '-v /var/lib/jenkins/jobs/ycsb/branches/test/workspace:/tmp/role:ro -v /var/run/docker.sock:/var/run/docker.sock -w /tmp/role'
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