pipeline {
  agent {
    docker {
      image 'quay.io/ansible/molecule'
    }

  }
  stages {
    stage('molecule test') {
      steps {
        sh 'molecule test'
      }
    }
  }
}