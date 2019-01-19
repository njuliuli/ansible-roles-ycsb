pipeline {
  agent {
    node {
      label 'Get latest code'
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