pipeline{

agent{label 'linux'}
    stages{
		stage('Test'){
			steps{
			   sh 'flake8 app/site.py'
			}
		}
    }
}
