pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh '''mkdir -p molecule/default/roles
ln -sf `pwd` molecule/default/roles/ansible-role-ycsb
molecule syntax'''
      }
    }
  }
}