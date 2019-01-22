pipeline {
  agent {
    docker {
      image 'retr0h/molecule'
      args '-v /var/run/docker.sock:/var/run/docker.sock'
    }
  }
  stages {
    stage('Build') {
      steps {
        sh '''pip install molecule docker'''
        sh '''mkdir -p molecule/default/roles
ln -sf `pwd` molecule/default/roles/ansible-role-ycsb'''
        sh 'molecule test'
      }
    }
  }
}
