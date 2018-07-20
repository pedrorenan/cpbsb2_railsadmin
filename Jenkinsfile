pipeline {
  agent {
    docker {
      image 'ruby:2.5.1'
      args '-p 3000:3000'
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
        sh 'bundle exec rake db:create db:migrate db:seed'
      }
    }
    stage('rodar') {
      steps {
        sh 'rails s'
      }
    }
  }
}