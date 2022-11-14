pipeline {
  agent any
  tools {
    'org.jenkinsci.plugins.docker.commons.tools.DockerTool' '18.09'
  }
  environment {
    DOCKER_CERT_PATH = credentials('id-for-a-docker-cred')
  }
  stages {
    stage('foo') {
      steps {
        sh "docker version"
      }
    }
  }
}

// node {
//     def app

//     stage('Clone repository') {
//         checkout scm
//     }

//     stage('Build image') {
//         app = docker.build("walkero/phpdemo")
//     }
// }