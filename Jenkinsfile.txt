pipeline {
 agent any
 environment {
  dotnet = '/usr/share/dotnet'
 }
 stages {
  stage('Checkout') {
   steps {
    git url: 'https://github.com/ratulbasak/netcore-api.git', branch: '*'
   }
  }
  }
}