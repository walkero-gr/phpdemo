pipeline {
  agent {
    label 'php8'
  }
//   agent {
//     dockerfile true
//   }
//   tools {
//     'org.jenkinsci.plugins.docker.commons.tools.DockerTool' '18.09'
//   }
//   environment {
//     DOCKER_CERT_PATH = credentials('id-for-a-docker-cred')
//   }
  stages {
	stage('Build image') {
      steps {
        app = docker.build("walkero/phpdemo")
	  }
    }

    // stage('foo') {
    //   steps {
    //     sh "docker version"
    //   }
    // }
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