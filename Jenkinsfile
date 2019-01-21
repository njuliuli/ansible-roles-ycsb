pipeline {
  agent {
    docker {
      args '-u root:root -v /var/run/docker.sock:/var/run/docker.sock'
      image 'quay.io/ansible/molecule'
    }

  }
  stages {
    stage('Build') {
      steps {
        sh '''mkdir -p molecule/default/roles
ln -sf `pwd` molecule/default/roles/ansible-role-ycsb
molecule test'''
      }
    }
  }
}