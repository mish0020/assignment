pipeline{

agent{label 'linux'}
    stages{
		stage('Linting'){
			steps{
			   sh 'flake8 app/site.py'
			}
		}
	    stage('Build') {
		    steps{
			   docker build -t classweb:${BUILD_NUMBER} .
			 }
	    }
    }
}
