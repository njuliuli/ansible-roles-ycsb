pipeline {
  agent {
    dockerfile {
      additionalBuildArgs  '--build-arg USER=jenkins --build-arg UID=`id -u` --build-arg GROUP=jenkins --build-arg GID=`id -g`'
      args '-v /var/run/docker.sock:/var/run/docker.sock'
    }
  }
  stages {
    stage('Build') {
      steps {
        sh '''mkdir -p molecule/default/roles
ln -sf `pwd` molecule/default/roles/ansible-role-ycsb'''
        sh 'molecule test'
      }
    }
  }
}
