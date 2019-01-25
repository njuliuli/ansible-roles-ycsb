pipeline {
  agent {
    dockerfile {
      additionalBuildArgs '-t molecule --build-arg UID=`id -u` --build-arg GID=`id -g`'
      args '--privileged -v /var/run/docker.sock:/var/run/docker.sock -v /usr/bin/docker:/usr/bin/docker'
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
