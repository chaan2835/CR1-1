pipeline{
    agent any


    stages{
		stage('Build') {
            		steps {
                	sh 'mvn clean package '
           		     }
            			}	
        }
        stage('artifact uploading') {
            steps{
              nexusArtifactUploader artifacts:
	      	[
			[
				artifactId: 'jb-hello-world-maven', 
				classifier: '',
				file: 'target/jb-hello-world-maven-0.2.0',
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
    }
