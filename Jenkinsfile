
pipeline {
   agent any
   tools {
        maven 'maven 3.5.4'
    }
   stages{
   stage('Clone Repository') {
      steps{
        git url: 'https://github.com/ayoub1/spring-petclinic-rest.git'
      }
   }
   stage(' Maven Build') {
      steps{
      sh 'mvn clean package'
      }
   }
   stage('Build image') {
    def app =  docker.build("ayouboss/petclinic-deploy")
    }  
      
   stage('Push image') {
     /* Finally, we'll push the image with two tags:
      * First, the incremental build number from Jenkins
      * Second, the 'latest' tag.
      * Pushing multiple tags is cheap, as all the layers are reused. */
     docker.withRegistry('http://localhost:50000') {
       app.push("latest")
     }
 }
      
   /**
   stage('Run Maven Container') {
       
        //Remove maven-build-container if it exisits
        sh " docker rm -f maven-build-container"
        
        //Run maven image
        sh "docker run --rm --name maven-build-container maven-build"
   }
   
   stage('Deploy Spring Boot Application') {
        
         //Remove maven-build-container if it exisits
        sh " docker rm -f java-deploy-container"
       
        sh "docker run --name java-deploy-container --volumes-from maven-build-container -d -p 8090:8080 ayouboss/petclinic-deploy"
   }
*/
   }
}
