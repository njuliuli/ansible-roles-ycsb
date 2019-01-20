pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'mkdir -p molecule/default/roles'
        sh 'ln -sf `pwd` molecule/default/roles/ansible-role-ycsb'
        sh 'molecule converge'
      }
    }
  }
}