pipeline {
  agent {
    docker {
      image 'quay.io/ansible/molecule'
      args '--privileged -v /var/lib/jenkins/jobs/ycsb/branches/test/workspace:/tmp/workspace:ro -v /var/run/docker.sock:/var/run/docker.sock -w /tmp/workspace'
    }

  }
  stages {
    stage('Build') {
      steps {
        sh '''env
pwd
molecule test'''
      }
    }
  }
}