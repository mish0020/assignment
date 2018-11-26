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
			   sh 'docker build  -t classweb:${BUILD_NUMBER} .'
		    }
	    }
	    stage('Test') {
		   steps
		    {sh 'docker run -d --rm --name classweb1 -P -p 80:8080 classweb:${BUILD_NUMBER}'}
		    
	    }
    }  	    
    post {
	 always 
	      {sh 'docker rm -f classweb1'}
	}
    }
}
