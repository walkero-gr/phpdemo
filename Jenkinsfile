// pipeline {
// 	agent {
// 		label 'php8'
// 	}
// //   agent {
// //     dockerfile true
// //   }
// //   tools {
// //     'org.jenkinsci.plugins.docker.commons.tools.DockerTool' '18.09'
// //   }
// //   environment {
// //     DOCKER_CERT_PATH = credentials('id-for-a-docker-cred')
// //   }
//   stages {
// 	stage('Build image') {
// 		steps {
// 			app = docker.build("walkero/phpdemo")
// 		}
//     }

//     // stage('foo') {
//     //   steps {
//     //     sh "docker version"
//     //   }
//     // }
//   }
// }

node {
    def app

	environment {
		BASEVER = 1.0.0
	}

    stage('Clone repository') {
        checkout scm
    }

    stage('Build image') {
        app = docker.build("walkero/phpdemo:${env.BASEVER}.${env.BUILD_ID}")
    }

    stage('Code quality checks') {
    	parallel phpmd: {
			node('phpmd') {
				app.inside {
					sh 'phpmd src,tests html --reportfile ./phpmd-result.html'
				}
			}
		},
		phpcs: {
			node('phpcs') {
				app.inside {
					sh 'phpcs --standard=./phpcs.xml --report=junit --report-file=./phpcs-result.xml'
				}
			}
		}
    }
}