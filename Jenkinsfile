pipeline {
  agent {
    docker {
      image 'retr0h/molecule'
      args '-u molecule -v /var/run/docker.sock:/var/run/docker.sock'
    }
  }
  stages {
    stage('Build') {
      steps {
        sh '''mkdir -p molecule/default/roles
ln -sf `pwd` molecule/default/roles/ansible-role-ycsb'''
        sh 'sudo molecule test'
      }
    }
  }
}
