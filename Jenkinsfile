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
 stage('Restore PACKAGES') {
   steps {
    bat "nuget restore SolutionName.sln"
   }
  }
  stage('Clean') {
   steps {
    bat 'dotnet clean'
   }
  }
  stage('Build') {
   steps {
    bat 'dotnet build --configuration Release'
   }
  }
  }
}