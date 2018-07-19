pipeline {
  agent {
    docker {
      image 'ruby:2.5.1'
    }

  }
  stages {
    stage('instalar gems') {
      steps {
        sh 'bundle'
      }
    }
  }
}