pipeline {
  agent {
    docker {
      image 'quay.io/ansible/molecule'
      args '-p 3000:3000'
    }

  }
  stages {
    stage('Build') {
      steps {
        sh 'pip install ansible '
        sh '''mkdir -p molecule/default/roles
ln -sf `pwd` molecule/default/roles/ansible-role-ycsb'''
        sh 'molecule converge'
      }
    }
  }
}