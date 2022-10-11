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
                 stage('scm') { 
                           steps { git branch: 'main', credentialsId: 'githubgxg513', url: 'git@github.com:ITSCHOOL-DEVOPS/JENKINS-PIPELINE.git'   }} 
                 stage('Build') {  steps { sh 'mvn package'}  }  
                 stage('Build Docker Image') {            
                          steps {   script { app = docker.build(DOCKER_IMAGE_NAME)  } }       
                                                                  }
                stage('Push Docker Image') {                         
                                    steps {   script {   docker.withRegistry('https://registry.hub.docker.com', 'dockerhub')                            
                                          {  app.push("${env.BUILD_NUMBER}")                                  
                                              app.push("latest") } }  }}        
                                                 
               stage('Pull Docker Image') {                              
                            steps {                                            
                                 script {  docker.withRegistry('https://registry.hub.docker.com', 'dockerhub') {                                                
                                           image = docker.image('gxg513/webapp')                                                                                    
                                           image.pull()  } } } }   
                stage('Start server') {             
                            steps { sh 'docker run --rm -d -p 9999:8080 --name webapp "gxg513/webapp:${BUILD_ID}"'  }        }   

                                                  
                       }}
