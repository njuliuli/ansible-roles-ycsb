pipeline {
  agent {
    docker {
      image 'quay.io/ansible/molecule'
      args '-v /var/lib/jenkins/jobs/ycsb/branches/test/workspace:/tmp/var/lib/jenkins/jobs/ycsb/branches/test/workspace:ro -v /var/run/docker.sock:/var/run/docker.sock -w /tmp/var/lib/jenkins/jobs/ycsb/branches/test/workspace'
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