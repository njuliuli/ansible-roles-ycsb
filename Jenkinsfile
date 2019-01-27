pipeline {
  agent {
    docker {
      image 'quay.io/ansible/molecule'
      args '-u root:root -v /var/run/docker.sock:/var/run/docker.sock'
    }
  }
  stages {
    stage('Build') {
      steps {
        sh '''pip install docker'''
      }
    }
    stage('Test') {
      steps {
        sh '''mkdir -p molecule/default/roles
ln -sf `pwd` molecule/default/roles/ansible-role-ycsb'''
        sh 'molecule test'
      }
    }
  }
}
