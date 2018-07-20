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
    stage('provisionar') {
      steps {
        sh 'rake db:create db:migrate db:seed'
      }
    }
    stage('rodar') {
      steps {
        sh 'rails s'
      }
    }
  }
}