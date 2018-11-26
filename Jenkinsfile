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
			   sh 'docker build --no-cache -t classweb:${BUILD_NUMBER} .'
		    }
	    }
	    stage('Test') {
		   steps
		    {sh 'docker run -d --rm --name classweb1 -P -p 80:8080 classweb:${BUILD_NUMBER}'}
		    {sh 'curl $(curl 169.254.169.254/latest/meta-data/local-ipv4) | grep "super"'}
	    }
    }  	    
    post {
	 always {
		echo "code which should always run goes here"
	}
    }
}
