pipeline {
  agent {
    docker {
      image 'quay.io/ansible/molecule'
    }

  }
  stages {
    stage('Build') {
      steps {
        sh '''pip install ansible --upgrade
molecule converge'''
      }
    }
  }
}