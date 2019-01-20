pipeline {
  agent {
    docker {
      image 'docker'
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