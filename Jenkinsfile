pipeline {   
        agent any    
        environment {        
                  DOCKER_IMAGE_NAME = "gxg513/webapp:${BUILD_ID}" }    
        stages {        
               stage('test-ls') {            
                          steps {               
                                  deleteDir()               
                                  sh 'pwd'                
                                  sh 'ls -lah'  }       
                                }        
                 stage('Build Docker Image') {            
                          steps {   script { app = docker.build(DOCKER_IMAGE_NAME)  } }       
                                                                  }       
               
                                                                  }    
                       }
