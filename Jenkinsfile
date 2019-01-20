pipeline {
  agent {
    docker {
      image 'quay.io/ansible/molecule'
    }

  }
  stages {
    stage('Build') {
      steps {
        sh 'sudo pip install ansible'
        sh '''mkdir -p molecule/default/roles
ln -sf `pwd` molecule/default/roles/ansible-role-ycsb'''
        sh 'molecule converge'
      }
    }
  }
}