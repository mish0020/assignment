pipeline{

agent{label 'linux'}
    stages{
		stage('Test'){
			steps{
				flack8 'app/site.py'
			}
		}
    }
}
