pipeline {
  agent {
    dockerfile {
      additionalBuildArgs '--tag molecule --build-arg UID=`id -u` --build-arg GID=`id -g`'
      args '-v /var/run/docker.sock:/var/run/docker.sock -v `which docker`:/usr/bin/docker'
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
