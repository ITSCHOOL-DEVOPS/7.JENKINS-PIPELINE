pipeline {   
        agent any    
        environment {        
                  DOCKER_IMAGE_NAME = "gxg513/webapp:{BUILD_ID}" }    
        stages {        
               stage('test-ls') {            
                          steps {               
                                  deleteDir()               
                                  sh 'pwd'                
                                  sh 'ls -lah'  }       
                                }        
                stage('scm') { 
                           steps { git branch: 'main', credentialsId: 'githubgxg513', url: 'git@github.com:ITSCHOOL-DEVOPS/7.REALESE-JENKINS-TOMCAT.git'   }}            
               
                                                                  }    
                       }
}
