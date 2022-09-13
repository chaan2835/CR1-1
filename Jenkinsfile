pipeline{
    agent any
    environment {
    DOCKERHUB_CREDENTIALS= credentials('my-docker-creds')
    }
    stages{
		stage('Build') {
            		steps {
                	sh 'mvn clean package '
           		     }
            	}	

        
  
        stage('artifact uploading') {
            steps{
              nexusArtifactUploader artifacts:
	      	[
			[
				artifactId: 'jb-hello-world-maven', 
				classifier: '',
				file: 'target/jb-hello-world-maven-0.2.0.jar',
				type: 'jar'
			]
		],
			credentialsId: 'b4b22ac4-cc33-444a-a50c-945f6eb4edc8',
			groupId: 'org.springframework', 
			nexusUrl: '172.31.33.156:8081',
			nexusVersion: 'nexus3',
			protocol: 'http', 
			repository: 'CR1-1',
			version: '0.2.0' 
            }
        }
	stage('build docker image'){
		steps {
				
			sh 'docker build -t myapp:$BUILD_NUMBER .'
			
		}
	}
	stage ('log-in to docker'){
		steps {
			script {
		withCredentials([string(credentialsId: 'chaan2835', variable: 'docker-creds')]) {
		 sh 'docker login -u chaan2835 -p ${docker-creds}'

}
	
		sh 'docker push myapp'
				}
    			}	
		}	
	}
}
