pipeline {
  agent {
    node {
      label 'ultron_stage'
    }
  }
  stages {
    stage('Running script') {
      steps {
            sh 'cd /var/www/decomission/test'
      }
    }
  }

stages {
    stage('Running script') {
      steps {
            sh 'git fetch --all && git checkout composer.lock && git stash && git checkout v8.4.1 && git stash pop'
      }
    }
  }


}
